//
//  FallingRepository.swift
//  Data
//
//  Created by SeungMin on 1/11/24.
//

import Foundation

import RxSwift
import Moya

public final class FallingRepository: ProviderProtocol {
  public typealias Target = FallingTarget
  public var provider: MoyaProvider<Target>
  public init(isStub: Bool, sampleStatusCode: Int, customEndpointClosure: ((Target) -> Moya.Endpoint)?) {
    self.provider = Self.consProvider(isStub, sampleStatusCode, customEndpointClosure)
  }
}


extension FallingRepository: FallingRepositoryInterface {
  public func checkDailyTopicSelected() -> RxSwift.Single<Bool> {
    .just(false)
  }
  
  public func dailyKeyword() -> RxSwift.Single<FallingInterface.FallingTopic> {
    .just(.mock)
  }
  
  public func selectDailyKeyword(topicIndex: String) -> RxSwift.Single<Void> {
    .just(())
  }
  
  public func user(alreadySeenUserUUIDList: [String], userDailyFallingCourserIdx: Int, size: Int) -> Single<FallingUserInfo> {
    request(
      type: FallingUserRes.self,
      target: .users(
        FallingUserReq(
        alreadySeenUserUUIDList: alreadySeenUserUUIDList,
        userDailyFallingCourserIdx: userDailyFallingCourserIdx,
        size: size
        )
      )
    )
    .map { $0.toDomain() }
  }
}
