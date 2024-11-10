//
//  InquiryBuilder.swift
//  AuthInterface
//
//  Created by Kanghos on 7/21/24.
//

import Foundation


import AuthInterface

public final class InquiryBuilder: InquiryBuildable {

  public init() {}

  public func build(rootViewControllable: ViewControllable) -> InquiryCoordinating {
    let coordinator = InquiryCoordinator(viewControllable: rootViewControllable)

    return coordinator
  }
}
