//
//  UIAlertController_Extension.swift
//  JDExtension
//
//  Created by Jedediah on 2021/1/8.
//

import UIKit

public extension UIAlertController {

    static func alert(title: String?, message: String?, cancelTitle: String?, buttonTitles: [String], preferredStyle: UIAlertController.Style, respondBlock:@escaping (Int) -> ()) -> UIAlertController {
        
        let alertC = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        if let cancel = cancelTitle {
            alertC.addAction(UIAlertAction(title: cancel, style: .cancel, handler: nil))
        }
        
        buttonTitles.enumerated().forEach { (index, title) in
            alertC.addAction(UIAlertAction(title: title, style: UIAlertAction.Style.default, handler: { (action) in
                respondBlock(index)
            }))
        }
        
        return alertC
    }
    
    static func alert(title: String?, message: String?, buttonInfos: [String: UIAlertAction.Style], preferredStyle: UIAlertController.Style, respondBlock:@escaping (Int) -> ()) -> UIAlertController {
        
        let alertC = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        buttonInfos.enumerated().forEach { (index, info) in
            alertC.addAction(UIAlertAction(title: info.key, style: info.value, handler: { (action) in
                respondBlock(index)
            }))
        }
        
        return alertC
    }

}
