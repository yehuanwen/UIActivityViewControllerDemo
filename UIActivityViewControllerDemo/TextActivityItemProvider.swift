//
//  TextActivityItemProvider.swift
//  UIActivityViewControllerDemo
//
//  Created by yhw on 17/1/10.
//  Copyright © 2017年 yhw. All rights reserved.
//

import UIKit

class TextActivityItemProvider: UIActivityItemProvider {
    public override func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return "text"
    }
    
    @available(iOS 6.0, *)
    public override func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivityType) -> Any? {
        print("=====share text start=====")
        
        if activityType.rawValue == "com.tencent.xin.sharetimeline" {// WeChat
            return "WeChat"
        }
        
        let shareText = "Google"
        return shareText
    }
}
