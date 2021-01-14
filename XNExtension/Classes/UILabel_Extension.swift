//
//  UILabel_Extension.swift
//  FBSnapshotTestCase
//
//  Created by Jedediah on 2021/1/7.
//

import UIKit

public extension UILabel {

    class func label(text: String?, textColor: UIColor, font: UIFont?) -> UILabel {
        UILabel.label(text: text, textColor: textColor, font: font, frame: .zero)
    }
    
    class func label(text: String?, textColor: UIColor, font: UIFont?, frame: CGRect) -> UILabel {
        
        let label = UILabel.init(frame: frame)
        label.text = text
        label.textColor = textColor
        label.font = font
        return label
    }

}
