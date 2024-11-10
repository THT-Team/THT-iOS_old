//
//  MyPageAlertBuildable.swift
//  MyPageInterface
//
//  Created by Kanghos on 6/15/24.
//

import Foundation



public protocol MyPageAlertBuildable {
  func build(rootViewControllable: ViewControllable) -> MyPageAlertCoordinating
}
