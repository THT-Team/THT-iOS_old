import Foundation
import DSKit
import AuthInterface
import RxSwift
import RxCocoa

public final class PhoneAuthVM: AuthViewModelType {
  private let phoneNumber: String
  private let useCase: AuthUseCaseInterface
  private var disposeBag = DisposeBag()

  private var timerDisposable: Disposable?
  private let tickTrigger = PublishRelay<String>()
  private let timestampSubject = PublishSubject<AuthCodeWithTimeStamp>()

  public weak var delegate: PhoneAuthViewDelegate?

  public struct Input: AuthInput {
    public let viewWillAppear: Signal<Void>
    public let codeInput: Driver<String>
    public let finishAnimationTrigger: Signal<Void>
    public let resendBtnTap: Signal<Void>

    public init(viewWillAppear: Signal<Void>, codeInput: Driver<String>, finishAnimationTrigger: Signal<Void>, resendBtnTap: Signal<Void>) {
      self.viewWillAppear = viewWillAppear
      self.codeInput = codeInput
      self.finishAnimationTrigger = finishAnimationTrigger
      self.resendBtnTap = resendBtnTap
    }
  }

  public struct Output: AuthOutput {

    public let description: Driver<String>
    public let error: Driver<Error>
    public let certificateSuccess: Driver<Bool>
    public var certificateFailuer: RxCocoa.Driver<Bool>
    public let timestamp: Driver<String>
    public let activityIndicator: Driver<Bool>
  }

  public init(phoneNumber: String, delegate: PhoneAuthViewDelegate, useCase: AuthUseCaseInterface) {
    self.phoneNumber = phoneNumber
    self.useCase = useCase
    self.delegate = delegate
  }

  deinit {
    self.timerDisposable?.dispose()
    self.timerDisposable = nil
  }
}

extension PhoneAuthVM {

  public func transform(input: Input) -> Output {
#if DEBUG
    let timeDuration = 10
#else
    let timeDuration = 60 * 3
#endif
    let errorTracker = PublishSubject<Error>()
    let description = Driver.just(phoneNumber + "으로\n전송된 코드를 입력해주세요.")
    let activityRelay = BehaviorRelay(value: false)

    let authNumber = Signal
      .merge(input.resendBtnTap, input.viewWillAppear)
      .flatMapLatest { [weak self] _ -> Driver<Int> in
        guard let self = self else { return .empty() }
        self.startTimer(timeDuration: timeDuration)

        return self.useCase.certificate(phoneNumber: self.phoneNumber)
          .debug()
          .asDriver { error in
            errorTracker.onNext(error)
            return .empty()
          }
      }

    authNumber
      .map { AuthCodeWithTimeStamp(
        authCode: $0,
        timeDuration: timeDuration)
      }.asObservable()
      .bind(to: timestampSubject)
      .disposed(by: disposeBag)

    let isValidate = input.codeInput
      .distinctUntilChanged()
      .filter { $0.count == 6 }
      .withLatestFrom(timestampSubject.asDriverOnErrorJustEmpty()) { code, authNumber in
        guard authNumber.isAvailableCode() else {
          return false
        }
        return code == String(authNumber.authCode)
      }

    let checkUserExisted = isValidate
      .filter { $0 }
      .asObservable()
      .withUnretained(self)
      .flatMap { owner, _ in
        activityRelay.accept(true)
        return owner.useCase.checkUserExists(phoneNumber: owner.phoneNumber)
          .asObservable()
          .catch { error in
            activityRelay.accept(false)
            errorTracker.onNext(error)
            return .empty()
          }
      }
      .asSignal(onErrorSignalWith: .empty())

    let needSignUp = Signal.zip(input.finishAnimationTrigger, checkUserExisted) { $1 }

    needSignUp.filter { $0.isSignUp == true }
      .asObservable()
      .withUnretained(self)
      .flatMapLatest { owner, signUpRes in
        owner.useCase.savePhoneNumber(owner.phoneNumber)
        return owner.useCase.login()
          .asObservable()
          .catch { error in
            activityRelay.accept(false)
            errorTracker.onNext(error)
            return .empty()
          }
      }
      .asObservable()
      .observe(on: MainScheduler.asyncInstance)
      .subscribe(with: self) { owner, _ in
        activityRelay.accept(false)
        owner.releaseTimer()
        owner.delegate?.didAuthComplete(option: .signIn)
      }.disposed(by: disposeBag)

    needSignUp
      .asObservable()
      .filter { $0.isSignUp == false }
      .observe(on: MainScheduler.asyncInstance)
      .subscribe(with: self, onNext: { owner, _ in
        activityRelay.accept(false)
        owner.releaseTimer()
        owner.delegate?.didAuthComplete(option: .signUp(phoneNumber: owner.phoneNumber))
      }).disposed(by: disposeBag)

    return Output(
      description: description,
      error: errorTracker.asDriver(onErrorDriveWith: .empty()),
      certificateSuccess: checkUserExisted.map { _ in true }.asDriver(onErrorJustReturn: false),
      certificateFailuer: isValidate.filter { !$0 }.asDriver(onErrorJustReturn: false),
      timestamp: tickTrigger.asDriverOnErrorJustEmpty(),
      activityIndicator: activityRelay.asDriver()
    )
  }

  private func startTimer(timeDuration: Int) {
    releaseTimer() // Ensure the previous timer is disposed
    self.timerDisposable = Observable<Int>.timer(.seconds(0), period: .seconds(1), scheduler: MainScheduler.instance)
      .take(timeDuration + 2)
      .withLatestFrom(timestampSubject) { $1.timeString }
      .bind(to: tickTrigger)
  }

  private func releaseTimer() {
    self.timerDisposable?.dispose()
    self.timerDisposable = nil
  }
}
