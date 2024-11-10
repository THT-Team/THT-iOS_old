//
//  TFBaseField2.swift
//  DSKit
//
//  Created by Kanghos on 9/25/24.
//

import UIKit

open class TFAtomField: UITextField {
  struct Appearence {
    var statusActiveColor: UIColor
    var statusInactiveColor: UIColor
  }
  public var statusBar: CALayer?
  public private(set) lazy var clearBtn: UIButton = UIButton.makeClearBtn()

  public private(set) lazy var errorDescriptionLabel = UILabel().then {
    $0.font = .thtCaption1M
    $0.textColor = DSKitAsset.Color.error.color
    $0.textAlignment = .left
    $0.numberOfLines = 3
  }

  // TODO: customTextField를 그릴 때, 악세서리 뷰들을 어디에서 그러야할지 모르겠음.

  open override func layoutSubviews() {
    super.layoutSubviews()

    if self.statusBar == nil {
      let statusBarLayer = CALayer()
      statusBarLayer.backgroundColor = UIColor.green.cgColor

      self.statusBar = statusBarLayer
      self.layer.addSublayer(statusBarLayer)
    }
    statusBar?.frame = CGRect(origin: .zero, size: CGSize(width: self.bounds.width, height: 2))
    backgroundColor = .white
  }

  init() {
    super.init(frame: .zero)
    makeUI()
    bindAction()
  }

  public func makeUI() {
    addSubviews(
      clearBtn,
      errorDescriptionLabel
    )

    clearBtn.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.trailing.equalToSuperview()
      $0.size.equalTo(24)
    }

    errorDescriptionLabel.snp.makeConstraints {
      $0.leading.trailing.equalToSuperview()
      $0.top.equalTo(self.snp.bottom)
      $0.height.greaterThanOrEqualTo(20)
      $0.bottom.equalToSuperview()
    }
  }

  public func bindAction() {
    clearBtn.addAction(UIAction(handler: { [weak self] _ in

    }), for: .touchUpInside)
  }

  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

#Preview("", traits: .fixedLayout(width: 300, height: 100)) {
  let tf = TFAtomField()
  tf.text = "asdfad"
  return tf
}
