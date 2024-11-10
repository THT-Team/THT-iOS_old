//
//  TFBaseCollectionView.swift
//  DSKit
//
//  Created by SeungMin on 3/1/24.
//

import UIKit

import RxSwift

open class TFBaseCollectionView: UICollectionView {

  @available(*, unavailable)
  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    super.init(frame: frame, collectionViewLayout: layout)
  }

  private let dimView: UIView = {
    let view = UIView()
    view.backgroundColor = DSKitAsset.Color.DimColor.default.color
    return view
  }()
  
  open override func touchesShouldCancel(in view: UIView) -> Bool {
      if view is UIControl {
        return true
      }
      return super.touchesShouldCancel(in: view)
    }

  open func makeUI() {}

  private func createDimView() -> UIView {
    let view = UIView()
    view.backgroundColor = DSKitAsset.Color.DimColor.default.color
    return view
  }
}
