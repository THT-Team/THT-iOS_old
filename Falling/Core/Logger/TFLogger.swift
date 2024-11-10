//
//  TFLogger.swift
//  Falling
//
//  Created by Kanghos on 11/10/24.
//

import Foundation
import OSLog

extension Logger {
  private static var subsystem = Bundle.main.bundleIdentifier!
  static var data = Logger(subsystem: subsystem, category: "Data")
  static var ui = Logger(subsystem: subsystem, category: "UI")
  static var domain = Logger(subsystem: subsystem, category: "Domain")

}

public struct TFLogger {
  public static var dataLogger = Logger.data
  public static var ui = Logger.ui
  public static var domain = Logger.domain

  public static func cycle(methodName: StaticString = #function, name: AnyObject) {
    ui.debug("\(methodName) \(type(of: name))")
  }
}
