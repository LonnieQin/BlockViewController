//
//  AppDelegate.swift
//  Sample
//
//  Created by Apple on 2017/3/16.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = BlockViewController.instance { (c) in
            let label = UILabel()
            c.onViewDidLoad = {
                c.view.backgroundColor = .white
                c.view.addSubview(label)
                label.text = "Hello world"
                c.view.addSubview(label)
                label.translatesAutoresizingMaskIntoConstraints = false
                c.view.addConstraint(label.centerXAnchor.constraint(equalTo: c.view.centerXAnchor))
                c.view.addConstraint(label.centerYAnchor.constraint(equalTo: c.view.centerYAnchor))
            }
        }
        self.window?.makeKeyAndVisible()
        return true
    }
 
}

