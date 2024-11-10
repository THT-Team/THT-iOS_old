//
//  FallingRepositoryInterface.swift
//  FallingInterface
//
//  Created by SeungMin on 1/11/24.
//

import Foundation



public protocol FallingRepositoryInterface {
  func user(alreadySeenUserUUIDList: [String], userDailyFallingCourserIdx: Int, size: Int) -> Single<FallingUserInfo>
  func checkDailyTopicSelected() -> Single<Bool>
  func dailyKeyword() -> Single<FallingTopic>
  func selectDailyKeyword(topicIndex: String) -> Single<Void>
}
