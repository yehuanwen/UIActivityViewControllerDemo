//
//  UrlActivityItemProvider.swift
//  UIActivityViewControllerDemo
//
//  Created by yhw on 17/1/10.
//  Copyright © 2017年 yhw. All rights reserved.
//

import UIKit

class UrlActivityItemProvider: UIActivityItemProvider {
    override func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return "url"
    }
    
    override func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivityType) -> Any? {
        print("=====share url start=====")
        
        if activityType.rawValue == "com.tencent.xin.sharetimeline" {// WeChat
            return NSURL(string: "https://weixin.qq.com")
        }
        
        let shareUrl = NSURL(string: "https://www.google.com")
        return shareUrl
    }
}
