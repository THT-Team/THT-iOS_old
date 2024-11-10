//
//  LaunchRouter.swift
//  App
//
//  Created by Kanghos on 2023/11/30.
//

import UIKit

public protocol URLHandling {
  func handle(_ url: URL)
}

public protocol LaunchCoordinating: Coordinator {
  func launch(window: UIWindow)
}

public final class LaunchCoordinator: BaseCoordinator, AuthLaunchCoordinating {
  @Injected private var useCase: AuthUseCaseInterface
  public weak var delegate: LaunchCoordinatingDelegate?

  public override func start() {
    launchFlow()
  }

  public func launchFlow() {
    let vm = LauncherViewModel(useCase: self.useCase)
    let vc = TFAuthLauncherViewController(viewModel: vm)
    vm.delegate = self
    self.viewControllable.pushViewController(vc, animated: true)
  }
}

extension LaunchCoordinator: LauncherDelegate {
  public func needAuth() {
    self.delegate?.finishFlow(self, .needAuth)
  }

  public func toMain() {
    self.delegate?.finishFlow(self, .toMain)
  }
}
