//
//  ShareActivityItemProvider.swift
//  UIActivityViewControllerDemo
//
//  Created by yhw on 17/1/10.
//  Copyright © 2017年 yhw. All rights reserved.
//

import UIKit

class ShareActivityItemProvider: UIActivityItemProvider {
    public override func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return "placeholder"
    }
    
    @available(iOS 6.0, *)
    public override func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivityType) -> Any? {
        print("=====share start=====")
        
        let shareTitle = "Google"
        let shareUrl = NSURL(string: "https://www.google.com")
        return [shareTitle, shareUrl!]
    }
}
