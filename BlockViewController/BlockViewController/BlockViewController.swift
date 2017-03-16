//
//  BlockViewController.swift
//  ThreeDSamples
//
//  Created by Apple on 2017/3/16.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

open class BlockViewController: UIViewController {
    open static func instance(configuration:(BlockViewController)->Void)->BlockViewController {
        let c = BlockViewController()
        configuration(c)
        return c
    }
    
    /// Configuration Code
    ///
    /// - Parameter controller: Configuration
    func configure(_ conf:(BlockViewController)->Void) {
        conf(self)
    }
    
    /// Place to add loadView() code
    open var onLoadView = {}
    /// Place to add viewDidLoad() code
    open var onViewDidLoad = {}
    /// Place to add viewDidAppear() code
    open var onViewDidAppear = {}
    /// Place to add viewWillAppear() code
    open var onViewWillAppear = {}
    /// Place to add viewWillDisappear() code
    open var onViewWillDisappear = {}
    /// Place to add didReceiveMemoryWarning() code
    open var onReceiveMemoryWarning = {}
    
    override open func loadView() {
        super.loadView()
        onLoadView()
    }
    override open func viewDidLoad() {
        super.viewDidLoad()
        onViewDidLoad()
    }
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onViewDidAppear()
    }
    

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        onViewWillAppear()
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        onViewWillDisappear()
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
