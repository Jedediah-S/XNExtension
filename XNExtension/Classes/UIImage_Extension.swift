//
//  UIImage_Extension.swift
//  JDExtension
//
//  Created by Jedediah on 2021/1/8.
//

import UIKit

public extension UIImage {
    
    // MARK: - 通过color创建图片
    static func image(withColor color: UIColor) -> UIImage {
        
        return image(withColor: color, size: .zero)
    }
    
    static func image(withColor color: UIColor, size: CGSize) -> UIImage {
        
        var imageSize = size
        if imageSize == .zero {
            imageSize = .init(width: 10, height: 10)
        }
        
        let rect = CGRect(x: 0.0, y: 0.0, width: imageSize.width, height: imageSize.height)
        // 1 开启位图上下文
        UIGraphicsBeginImageContext(imageSize)
        // 2 获取上下文
        let context = UIGraphicsGetCurrentContext()
        // 3 使用color填充上下文
        context?.setFillColor(color.cgColor)
        // 4 绘制矩形
        context?.fill(rect)
        // 5 从上下文获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // 6 结束上下文
        UIGraphicsEndImageContext()
        
        if image != nil {
            return image!
        } else {
            return UIImage()
        }
    }
    
    // MARK: - 创建一个内容可拉伸，而边角不拉伸的图片
    static func imageWithStretchanble(image: UIImage) -> UIImage {
        
        let newImage = image.stretchableImage(withLeftCapWidth: Int(image.size.width * 0.5), topCapHeight: Int(image.size.height * 0.5))
        return newImage;
    }
    
    // MARK: - 使用贝塞尔曲线切割图片添加圆角
    func withCornerRadius(_ radius: CGFloat) -> UIImage {
    
        return withCornerRadius(radius, size: self.size)
    }
    
    func withCornerRadius(_ radius: CGFloat, size: CGSize) -> UIImage {
        
        let bounds: CGRect = .init(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        UIBezierPath(roundedRect: bounds, cornerRadius: radius).addClip()
        draw(in: bounds)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage ?? UIImage()
    }
}

