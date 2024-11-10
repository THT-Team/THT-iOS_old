//
//  IdealEditVM.swift
//  MyPage
//
//  Created by kangho lee on 7/24/24.
//

import Foundation

import RxSwift
import RxCocoa





final class IdealEditVM: TFBaseEmojiEditVM {
  
  override func fetch(initial: [Int]) -> Driver<[ItemVMType]> {
    useCase.fetchEmoji(initial: initial, type: .idealType)
      .asDriver(onErrorJustReturn: [])
  }

  override func send(item: [EmojiType]) {
    userStore.send(action: .idealTypes(item))
  }
}

