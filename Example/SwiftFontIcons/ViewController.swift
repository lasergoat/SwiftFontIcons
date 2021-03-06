//
//  ViewController.swift
//  SwiftFontIcons
//
//  Created by daaavid on 08/07/2017.
//  Copyright (c) 2017 daaavid. All rights reserved.
//

import UIKit
import SwiftFontIcons

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    let button = UIBarButtonItem(title: "arrow-left".fa.icon!, style: .plain, target: nil, action: nil)
    var attributes = UIFont.fa(size: 18).attribute
    attributes[NSForegroundColorAttributeName] = UIColor.red
    button.setTitleTextAttributes(attributes, for: .normal)
    navigationItem.leftBarButtonItem = button
    
    
    
    let imageView = UIImageView()
    view.addSubview(imageView)
    
    imageView.image = "archive".zmdi.image(color: .gray, size: 100)
    imageView.frame.size = imageView.image!.size
    imageView.center = view.center.offsetBy(y: -imageView.image!.size.height)
    
    
    
    let zmdiIconCodes = ["account", "money-box", "twitter"]
    let colors: [UIColor] = [.black, .green, .cyan]
    
    for (index, codeAndColor) in zip(zmdiIconCodes, colors).enumerated() {
      let label = UILabel()
      view.addSubview(label)
      
      label.textAlignment = .center
      label.font = .zmdi(size: 40)
      
      let (code, color) = codeAndColor
      label.text = code.zmdi.icon
      label.textColor = color
    
      label.frame.size = label.intrinsicContentSize
      label.center = view.center.offsetBy(y: label.frame.height * CGFloat(index))
    }
  }
}

extension CGPoint {
  func offsetBy(x: CGFloat = 0, y: CGFloat = 0) -> CGPoint {
    return CGPoint(x: self.x + x, y: self.y + y)
  }
}

