//
//  UIView_Extension.swift
//  FBSnapshotTestCase
//
//  Created by Jedediah on 2021/1/7.
//

import UIKit

// MARK: - frame
public extension UIView {

    var x: CGFloat {
        get {
            return frame.origin.x
        }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.origin.x = newValue
            frame = tempFrame
        }
    }
    
    var y: CGFloat {
        get {
            return frame.origin.y
        }
        set(newValue) {
            var tempFrame :CGRect = frame
            tempFrame.origin.y = newValue
            frame = tempFrame
        }
    }
    
    var maxX: CGFloat {
        get {
            return frame.origin.x + frame.size.width
        }
    }
    
    var maxY: CGFloat {
        get {
            return frame.origin.y + frame.size.height
        }
    }
    
    var width: CGFloat {
        get {
            return frame.size.width
        }
        set(newValue) {
            var tempFrame :CGRect = frame
            tempFrame.size.width = newValue
            frame = tempFrame
        }
    }
    
    var height: CGFloat {
        get {
            return frame.size.height
        }
        set(newValue) {
            var tempFrame :CGRect = frame
            tempFrame.size.height = newValue
            frame = tempFrame
        }
    }
    
    var size: CGSize {
        get {
            return frame.size
        }
        set(newValue) {
            var tempFrame :CGRect = frame
            tempFrame.size = newValue
            frame = tempFrame
        }
    }

}

// MARK: - 添加圆角
public extension UIView {
    
    func addRoundedCorners(_ corners: UIRectCorner, radius: CGSize, size: CGSize) {
        
        return addRoundedCorners(corners, radius: radius, rect: .init(origin: .zero, size: size))
    }
    
    func addRoundedCorners(_ corners: UIRectCorner, radius: CGSize, rect: CGRect) {
        
        let rounded = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: radius)
        rounded.move(to: .zero)
        rounded.addLine(to: .init(x: 0, y: rect.size.height))
        let shape = CAShapeLayer()
        shape.path = rounded.cgPath
        self.layer.mask = shape;
    }
}
