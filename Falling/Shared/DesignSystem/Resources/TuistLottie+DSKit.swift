// swiftformat:disable all
// swiftlint:disable all
import Foundation
#if canImport(Lottie)
import Lottie
// MARK: - Animations Assets
public extension AnimationAsset {
  static let authSuccess = Self(named: "auth_success")
  static let likeHeart = Self(named: "like_heart")
  static let logoSplash = Self(named: "logo_splash")
  static let mainLoading = Self(named: "main_loading")
  static let unlike = Self(named: "unlike")
}
// MARK: - Animation Helpers
public extension AnimationAsset {
  /// All the available animation. Can be used to preload them
  static let allAnimations: [Self] = [
    Self.authSuccess,
    Self.likeHeart,
    Self.logoSplash,
    Self.mainLoading,
    Self.unlike,
  ]
}
// MARK: - Structures
public struct AnimationAsset: Hashable {
  public fileprivate(set) var name: String
  public let animation: LottieAnimation?
  public init(named name: String) {
    self.name = name
    if let url = Bundle.module.url(forResource: name, withExtension: "lottie") {
      self.animation = LottieAnimation.filepath(url.path)
    } else {
      self.animation = nil
    }
  }
  // MARK: Hashable Conformance
  public static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.name == rhs.name
  }
  public func hash(into hasher: inout Hasher) {
    hasher.combine(self.name)
  }
}
// MARK: - Preload Helpers
public extension AnimationAsset {
  /// Preloads all the Lottie Animations to avoid performance issues when loading them
  static func preload() -> Void {
    for animationAsset in Self.allAnimations {
      _ = animationAsset.animation
    }
  }
}
#endif
