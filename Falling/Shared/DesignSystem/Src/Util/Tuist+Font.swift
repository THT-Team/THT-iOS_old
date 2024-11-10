//
//  Tuist+Font.swift
//  Falling
//
//  Created by Kanghos on 11/10/24.
//
// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist

import UIKit.UIFont
import SwiftUI

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
public enum DSKitFontFamily: Sendable {
  public enum Pretendard: Sendable {
    public static let bold = DSKitFontConvertible(name: "Pretendard-Bold", family: "Pretendard", path: "Pretendard-Bold.ttf")
    public static let extraBold = DSKitFontConvertible(name: "Pretendard-ExtraBold", family: "Pretendard", path: "Pretendard-ExtraBold.ttf")
    public static let medium = DSKitFontConvertible(name: "Pretendard-Medium", family: "Pretendard", path: "Pretendard-Medium.ttf")
    public static let regular = DSKitFontConvertible(name: "Pretendard-Regular", family: "Pretendard", path: "Pretendard-Regular.ttf")
    public static let semiBold = DSKitFontConvertible(name: "Pretendard-SemiBold", family: "Pretendard", path: "Pretendard-SemiBold.ttf")
    public static let all: [DSKitFontConvertible] = [bold, extraBold, medium, regular, semiBold]
  }
  public static let allCustomFonts: [DSKitFontConvertible] = [Pretendard.all].flatMap { $0 }
  public static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

public struct DSKitFontConvertible: Sendable {
  public let name: String
  public let family: String
  public let path: String

  public typealias Font = UIFont

  public func font(size: CGFloat) -> Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return font
  }

  public func swiftUIFont(size: CGFloat) -> SwiftUI.Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return SwiftUI.Font(font)
  }

  public func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    // swiftlint:disable:next implicit_return
    return Bundle.module.url(forResource: path, withExtension: nil)
  }
}

public extension DSKitFontConvertible.Font {
  convenience init?(font: DSKitFontConvertible, size: CGFloat) {
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    self.init(name: font.name, size: size)
  }
}
// swiftlint:enable all
// swiftformat:enable all
