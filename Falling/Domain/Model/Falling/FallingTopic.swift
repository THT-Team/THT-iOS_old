//
//  FallingTopic.swift
//  FallingInterface
//
//  Created by Kanghos on 8/21/24.
//

import Foundation

public enum TopicType: String {
  case oneChoice
  case twoChoice
  case fourChoice
}

// MARK: - FallingTopic
public struct FallingTopic {
  public let expirationUnixTime: Int
  public let type: TopicType
  public let introduction: String
  public let fallingTopicList: [FallingTopicList]

  public init(expirationUnixTime: Int, type: TopicType, introduction: String, fallingTopicList: [FallingTopicList]) {
    self.expirationUnixTime = expirationUnixTime
    self.type = type
    self.introduction = introduction
    self.fallingTopicList = fallingTopicList
  }
}

// MARK: - FallingTopicList
public struct FallingTopicList {
  public let idx: Int
  public let keyword: String
  public let keywordIdx: Int
  public let keywordImgURL, talkIssue: String

  public init(idx: Int, keyword: String, keywordIdx: Int, keywordImgURL: String, talkIssue: String) {
    self.idx = idx
    self.keyword = keyword
    self.keywordIdx = keywordIdx
    self.keywordImgURL = keywordImgURL
    self.talkIssue = talkIssue
  }
}

public extension FallingTopic {
  static var mock: Self {
    .init(
      expirationUnixTime: Int(Date().timeIntervalSince1970),
      type: .oneChoice,
      introduction: "asdfasdfad",
      fallingTopicList: [
        .init(
          idx: 1,
          keyword: "키워드",
          keywordIdx: 1,
          keywordImgURL: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
          talkIssue: "토픽 이슈"
        )
      ]
    )
  }
}
