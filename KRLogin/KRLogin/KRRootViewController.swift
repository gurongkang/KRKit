//
//  KRRootViewController.swift
//  KRLogin
//
//  Created by RK on 2018/11/5.
//  Copyright © 2018年 RK. All rights reserved.
//

import UIKit
import CYLTabBarController

class KRRootViewController: UIViewController {

    
    //MARK: -life
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = UIButton.init(frame:CGRect.init(x: 10, y: 10, width: 100, height: 100));
        loginButton.backgroundColor = UIColor.lightGray;
        loginButton.setTitle("登录", for: UIControl.State.normal);
        loginButton.addTarget(self, action:#selector(showLogin), for: UIControl.Event.touchUpInside)
        self.view.addSubview(loginButton);
    }
    
    //MARK: -业务
    @objc func showLogin() {
        
    }

}

