//
//  ViewController.swift
//  XNExtension
//
//  Created by Jedediah on 01/14/2021.
//  Copyright (c) 2021 Jedediah. All rights reserved.
//

import UIKit
import XNExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let v = UIView(frame: .init(x: 100, y: 100, width: 100, height: 100))
        v.backgroundColor = UIColor.red
        v.addRoundedCorners([.topRight, .bottomLeft], radius: .init(width: 20, height: 20), size: v.bounds.size)
        view.addSubview(v)
        
        if #available(iOS 13.0, *) {
            let b = UIButton.button(image: UIImage.init(systemName: "square.and.arrow.up.fill"), highlightedImage: nil, frame: .init(x: v.maxX + 100, y: v.y + 100, width: 20, height: 20), target: nil, action: nil)
            view.addSubview(b)
        } else {
            // Fallback on earlier versions
        }
        
        let imageV = UIImageView(frame: .init(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(imageV)
        let image = UIImage(named: "IMG_0449")
        imageV.image = image?.withCornerRadius(50, size: imageV.size)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let vc = UIAlertController.alert(title: "压抑", message: "算了吧算了吧", buttonInfos: ["取消": .cancel, "确定": .destructive], preferredStyle: .alert) { (index) in
            print(index)
        }
        self.present(vc, animated: true, completion: nil)
    }

}

