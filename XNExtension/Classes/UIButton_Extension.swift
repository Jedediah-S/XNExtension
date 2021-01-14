//
//  UIButton_Extension.swift
//  JDExtension
//
//  Created by Jedediah on 2021/1/8.
//

import UIKit

public extension UIButton {

    // MARK: - title Button
    static func button(title: String, titleColor: UIColor, font: UIFont) -> UIButton {
    
        return self.button(title: title, titleColor: titleColor, font: font, frame: nil, target: nil, action: nil)
    }
    
    static func button(title: String, titleColor: UIColor, font: UIFont, target: Any?, action: Selector?) -> UIButton {
    
        return self.button(title: title, titleColor: titleColor, font: font, frame: nil, target: target, action: action)
    }

    static func button(title: String, titleColor: UIColor, font: UIFont, frame: CGRect?,target: Any?, action: Selector?) -> UIButton {
        
        let button = UIButton(type: .custom)
        button.titleLabel?.font = font
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        if frame != nil {
            button.frame = frame!
        }
        if target != nil && action != nil {
            button.addTarget(target, action: action!, for: .touchUpInside)
        }
        return button
    }
    
    // MARK: - image Button
    static func button(image: UIImage?, highlightedImage: UIImage?) -> UIButton {
        
        return button(image: image, highlightedImage: highlightedImage, target: nil, action: nil)
    }
    
    static func button(image: UIImage?, highlightedImage: UIImage?,target: Any?, action: Selector?) -> UIButton {
        
        return button(image: image, highlightedImage: highlightedImage, frame: nil, target: target, action: action)
    }
    
    static func button(image: UIImage?, highlightedImage: UIImage?, frame: CGRect?,target: Any?, action: Selector?) -> UIButton {
        
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.setImage(highlightedImage, for: .highlighted)
        if frame != nil {
            button.frame = frame!
        }
        if target != nil && action != nil {
            button.addTarget(target, action: action!, for: .touchUpInside)
        }
        return button
    }
    
}
