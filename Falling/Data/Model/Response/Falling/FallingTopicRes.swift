//
//  FallingTopicRes.swift
//  Data
//
//  Created by Kanghos on 8/21/24.
//  Copyright © 2024 THT. All rights reserved.
//

import Foundation

// MARK: - FallingTopic
struct FallingTopicRes: Codable {
    let expirationUnixTime: Int
    let type, introduction: String
    let fallingTopicList: [FallingTopicList]
}

// MARK: - FallingTopicList
struct FallingTopicList: Codable {
    let idx: Int
    let keyword: String
    let keywordIdx: Int
    let keywordImgURL, talkIssue: String

    enum CodingKeys: String, CodingKey {
        case idx, keyword, keywordIdx
        case keywordImgURL = "keywordImgUrl"
        case talkIssue
    }
}
