//
//  ViewController.swift
//  UIActivityViewControllerDemo
//
//  Created by yhw on 17/1/10.
//  Copyright © 2017年 yhw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareAction(_ sender: Any, forEvent event: UIEvent) {
        
//        let text = TextActivityItemProvider(placeholderItem: "placeholder")
        let url = UrlActivityItemProvider(placeholderItem: "placeholder")
        let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        activityViewController.completionWithItemsHandler = { (activityType, completed, returnedItems, activityError) in
            print("=====share \(activityType?.rawValue) end=====")
        }
        self.present(activityViewController, animated: true, completion: nil)
    }

}

