//
//  KRLoginViewController.swift
//  KRLogin
//
//  Created by RK on 2018/11/5.
//  Copyright © 2018年 RK. All rights reserved.
//

import UIKit

class KRLoginViewController: UIViewController, KRPhoneLoginDelegate, KRAccountLoginDelegate {

    let loginView = Bundle.main.loadNibNamed("kRUserLoginView", owner: self, options: nil)?.first as!KRPhoneLoginView
    let accountView = Bundle.main.loadNibNamed("KRAccountLoginView", owner: self, options: nil)?.first as!KRAccountLoginView
    
    
    //MARK: -life
    override func viewDidLoad() {
        super.viewDidLoad()
        self.accountView.isHidden = true
        self.loginView.delegate = self
        
        self.view.addSubview(self.loginView)
        self.view.addSubview(self.accountView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.loginView.frame = self.view.frame
        self.accountView.frame = self.view.frame
    }
    
    //MARK: -KRUserLoginDelegate
    func accountLogin() {
        self.loginView.isHidden = true
        self.accountView.isHidden = false
    }
    
    //MARK: -KRAccountLoginDelegate
    func phoneLogin() {
        self.loginView.isHidden = false
        self.accountView.isHidden = true
    }
    
    
}
