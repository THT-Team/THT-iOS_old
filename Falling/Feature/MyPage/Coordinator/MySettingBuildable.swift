//
//  SettingBuildable.swift
//  MyPageInterface
//
//  Created by Kanghos on 6/15/24.
//

import Foundation



public protocol MySettingBuildable {
  func build(rootViewControllable: ViewControllable, user: User) -> MySettingCoordinating
}
