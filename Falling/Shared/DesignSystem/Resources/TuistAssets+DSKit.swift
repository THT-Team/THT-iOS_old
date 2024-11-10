// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum DSKitAsset: Sendable {
  public enum Bx {
  public static let authcodeCompleted = DSKitImages(name: "authcode_completed")
    public static let emailCompleted = DSKitImages(name: "email_completed")
    public static let eventWin = DSKitImages(name: "event_win")
    public static let firstChoice = DSKitImages(name: "first_choice")
    public static let leave = DSKitImages(name: "leave")
    public static let meetAll = DSKitImages(name: "meet_all")
    public static let noBlocked = DSKitImages(name: "no_blocked")
    public static let noLike = DSKitImages(name: "no_like")
    public static let noMudy = DSKitImages(name: "no_mudy")
    public static let noNoti = DSKitImages(name: "no_noti")
    public static let numberCompleted = DSKitImages(name: "number_completed")
    public static let signitureVertical = DSKitImages(name: "signitureVertical")
    public static let topicTimeOver = DSKitImages(name: "topic_time_over")
    public static let transferError = DSKitImages(name: "transfer_error")
    public static let withdraw = DSKitImages(name: "withdraw")
  }
  public enum Color {
  public static let cardShadow = DSKitColors(name: "CardShadow")
    public static let chatTopicBackground = DSKitColors(name: "ChatTopicBackground")
    public static let chatTopicBorder = DSKitColors(name: "ChatTopicBorder")
    public static let clear = DSKitColors(name: "Clear")
    public enum DimColor: Sendable {
    public static let `default` = DSKitColors(name: "DimColor/Default")
      public static let pauseDim = DSKitColors(name: "DimColor/PauseDim")
      public static let signUpDim = DSKitColors(name: "DimColor/SignUpDim")
      public static let timerDim = DSKitColors(name: "DimColor/TimerDim")
    }
    public static let disabled = DSKitColors(name: "Disabled")
    public enum DummyUserGradient: Sendable {
    public static let backgroundFirst = DSKitColors(name: "DummyUserGradient/BackgroundFirst")
      public static let backgroundSecond = DSKitColors(name: "DummyUserGradient/BackgroundSecond")
      public static let borderFirst = DSKitColors(name: "DummyUserGradient/BorderFirst")
      public static let borderSecond = DSKitColors(name: "DummyUserGradient/BorderSecond")
    }
    public static let error = DSKitColors(name: "Error")
    public static let event = DSKitColors(name: "Event")
    public enum LikeGradient: Sendable {
    public static let gradientFirst = DSKitColors(name: "LikeGradient/GradientFirst")
      public static let gradientSecond = DSKitColors(name: "LikeGradient/GradientSecond")
      public static let gradientThird = DSKitColors(name: "LikeGradient/GradientThird")
    }
    public static let neutral300 = DSKitColors(name: "Neutral300")
    public static let neutral400 = DSKitColors(name: "Neutral400")
    public static let neutral450 = DSKitColors(name: "Neutral450")
    public static let neutral50 = DSKitColors(name: "Neutral50")
    public static let neutral500 = DSKitColors(name: "Neutral500")
    public static let neutral600 = DSKitColors(name: "Neutral600")
    public static let neutral700 = DSKitColors(name: "Neutral700")
    public static let neutral900 = DSKitColors(name: "Neutral900")
    public static let pauseTitle = DSKitColors(name: "PauseTitle")
    public static let payment = DSKitColors(name: "Payment")
    public static let primary300 = DSKitColors(name: "Primary300")
    public static let primary400 = DSKitColors(name: "Primary400")
    public static let primary500 = DSKitColors(name: "Primary500")
    public static let primary600 = DSKitColors(name: "Primary600")
    public static let kakaoPrimary = DSKitColors(name: "KakaoPrimary")
    public static let naverPrimary = DSKitColors(name: "NaverPrimary")
    public static let thtOrange100 = DSKitColors(name: "THTOrange100")
    public static let thtOrange200 = DSKitColors(name: "THTOrange200")
    public static let thtOrange300 = DSKitColors(name: "THTOrange300")
    public static let thtOrange400 = DSKitColors(name: "THTOrange400")
    public static let thtRed = DSKitColors(name: "THTRed")
    public static let topicBackground = DSKitColors(name: "TopicBackground")
    public static let topicBorder = DSKitColors(name: "TopicBorder")
    public static let unSelected = DSKitColors(name: "UnSelected")
    public static let blur = DSKitColors(name: "blur")
  }
  public enum Image {
  public static let accentColor = DSKitColors(name: "AccentColor")
    public enum Component: Sendable {
    public static let check = DSKitImages(name: "Component/check")
      public static let checkCir = DSKitImages(name: "Component/check_cir")
      public static let checkCirSelect = DSKitImages(name: "Component/check_cir_select")
      public static let checkSelect = DSKitImages(name: "Component/check_select")
      public static let chevronRight = DSKitImages(name: "Component/chevron_right")
      public static let fallingLogo = DSKitImages(name: "Component/falling_logo")
    }
    public enum Icons: Sendable {
    public static let attach = DSKitImages(name: "Icons/attach")
      public static let attachSelected = DSKitImages(name: "Icons/attach.selected")
      public static let send = DSKitImages(name: "Icons/send")
      public static let sendSelected = DSKitImages(name: "Icons/send.selected")
      public static let mind = DSKitImages(name: "Icons/Mind")
      public static let pause = DSKitImages(name: "Icons/Pause")
      public static let chevron = DSKitImages(name: "Icons/Chevron")
      public static let explain = DSKitImages(name: "Icons/Explain")
      public static let bellBadge = DSKitImages(name: "Icons/bell.badge")
      public static let bell = DSKitImages(name: "Icons/bell")
      public static let close = DSKitImages(name: "Icons/close")
      public static let explainFill = DSKitImages(name: "Icons/explain.fill")
      public static let reportFill = DSKitImages(name: "Icons/report.fill")
      public static let report = DSKitImages(name: "Icons/report")
      public static let setting = DSKitImages(name: "Icons/setting")
      public static let shieldFill = DSKitImages(name: "Icons/shield.fill")
      public static let shield = DSKitImages(name: "Icons/shield")
      public static let face = DSKitImages(name: "Icons/face")
      public static let glow = DSKitImages(name: "Icons/glow")
      public static let messageSquare1 = DSKitImages(name: "Icons/message-square-1")
      public static let messageSquare = DSKitImages(name: "Icons/message-square")
      public static let pin = DSKitImages(name: "Icons/pin")
      public static let pinSmall = DSKitImages(name: "Icons/pin.small")
      public static let addWhite = DSKitImages(name: "Icons/add_white")
      public static let both = DSKitImages(name: "Icons/both")
      public static let cardInfo = DSKitImages(name: "Icons/card_info")
      public static let cardLike = DSKitImages(name: "Icons/card_like")
      public static let cardReject = DSKitImages(name: "Icons/card_reject")
      public static let closeCircle = DSKitImages(name: "Icons/close.circle")
      public static let editCircle = DSKitImages(name: "Icons/edit.circle")
      public static let edit = DSKitImages(name: "Icons/edit")
      public static let locationSetting = DSKitImages(name: "Icons/location_setting")
      public static let notiHeart = DSKitImages(name: "Icons/noti.heart")
      public static let notiTopic = DSKitImages(name: "Icons/noti.topic")
      public static let single = DSKitImages(name: "Icons/single")
    }
    public static let apple = DSKitImages(name: "Apple")
    public static let google = DSKitImages(name: "Google")
    public static let kakaotalk = DSKitImages(name: "Kakaotalk")
    public static let naver = DSKitImages(name: "Naver")
    public static let phone = DSKitImages(name: "Phone")
    public enum Tab: Sendable {
    public static let chat = DSKitImages(name: "Tab/chat")
      public static let chatSelected = DSKitImages(name: "Tab/chat.selected")
      public static let falling = DSKitImages(name: "Tab/falling")
      public static let fallingSelected = DSKitImages(name: "Tab/falling.selected")
      public static let heart = DSKitImages(name: "Tab/heart")
      public static let heartSelected = DSKitImages(name: "Tab/heart.selected")
      public static let more = DSKitImages(name: "Tab/more")
      public static let moreSelected = DSKitImages(name: "Tab/more.selected")
    }
    public enum Test: Sendable {
    public static let test1 = DSKitImages(name: "Test/test_1")
      public static let test2 = DSKitImages(name: "Test/test_2")
      public static let test3 = DSKitImages(name: "Test/test_3")
      public static let test4 = DSKitImages(name: "Test/test_4")
    }
  }
  public enum Topic {
  public static let popupAlone = DSKitImages(name: "popup_alone")
    public static let popupAppear = DSKitImages(name: "popup_appear")
    public static let popupBlue = DSKitImages(name: "popup_blue")
    public static let popupDaily = DSKitImages(name: "popup_daily")
    public static let popupFriends = DSKitImages(name: "popup_friends")
    public static let popupGood = DSKitImages(name: "popup_good")
    public static let popupHappy = DSKitImages(name: "popup_happy")
    public static let popupHeart = DSKitImages(name: "popup_heart")
    public static let popupHobby = DSKitImages(name: "popup_hobby")
    public static let popupHot = DSKitImages(name: "popup_hot")
    public static let popupInterest = DSKitImages(name: "popup_interest")
    public static let popupLove = DSKitImages(name: "popup_love")
    public static let popupMelancholy = DSKitImages(name: "popup_melancholy")
    public static let popupPet = DSKitImages(name: "popup_pet")
    public static let popupPhoto = DSKitImages(name: "popup_photo")
    public static let popupRest = DSKitImages(name: "popup_rest")
    public static let popupSkateboard = DSKitImages(name: "popup_skateboard")
    public static let popupTaste = DSKitImages(name: "popup_taste")
    public static let popupTrip = DSKitImages(name: "popup_trip")
    public static let popupValues = DSKitImages(name: "popup_values")
    public static let topAlone = DSKitImages(name: "top_alone")
    public static let topAppear = DSKitImages(name: "top_appear")
    public static let topBlue = DSKitImages(name: "top_blue")
    public static let topDaily = DSKitImages(name: "top_daily")
    public static let topFriends = DSKitImages(name: "top_friends")
    public static let topGood = DSKitImages(name: "top_good")
    public static let topHappy = DSKitImages(name: "top_happy")
    public static let topHeart = DSKitImages(name: "top_heart")
    public static let topHobby = DSKitImages(name: "top_hobby")
    public static let topHot = DSKitImages(name: "top_hot")
    public static let topInterest = DSKitImages(name: "top_interest")
    public static let topLove = DSKitImages(name: "top_love")
    public static let topMelancholy = DSKitImages(name: "top_melancholy")
    public static let topPet = DSKitImages(name: "top_pet")
    public static let topPhoto = DSKitImages(name: "top_photo")
    public static let topRest = DSKitImages(name: "top_rest")
    public static let topSkateboard = DSKitImages(name: "top_skateboard")
    public static let topTaste = DSKitImages(name: "top_taste")
    public static let topTrip = DSKitImages(name: "top_trip")
    public static let topValues = DSKitImages(name: "top_values")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class DSKitColors: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  public var color: Color {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIColor: SwiftUI.Color {
      return SwiftUI.Color(asset: self)
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension DSKitColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  convenience init?(asset: DSKitColors) {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Color {
  init(asset: DSKitColors) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct DSKitImages: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Image {
  init(asset: DSKitImages) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }

  init(asset: DSKitImages, label: Text) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: DSKitImages) {
    let bundle = Bundle.module
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:enable all
// swiftformat:enable all
