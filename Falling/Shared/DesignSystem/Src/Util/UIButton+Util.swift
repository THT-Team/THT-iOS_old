//
//  UIButton+Util.swift
//  DSKit
//
//  Created by Kanghos on 2024/01/11.
//

import UIKit

extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))

        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        self.setBackgroundImage(backgroundImage, for: state)
    }
    
    static var plusButton: UIButton {
      let button = UIButton()
      var config = UIButton.Configuration.filled()

      config.baseBackgroundColor = DSKitAsset.Color.disabled.color
      let imageConfig = UIImage.SymbolConfiguration(pointSize: 10)
      config.image = UIImage(systemName: "plus", withConfiguration: imageConfig)?.withTintColor(DSKitAsset.Color.neutral50.color, renderingMode: .alwaysOriginal)
      config.imagePadding = 14
      config.cornerStyle = .capsule

      button.configuration = config

      return button
    }
}
