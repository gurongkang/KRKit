//
//  KRRegisterViewController.swift
//  KRLogin
//
//  Created by RK on 2018/11/9.
//  Copyright © 2018年 RK. All rights reserved.
//

import UIKit

class KRRegisterViewController: UIViewController {

    let registerView = Bundle.main.loadNibNamed("kRUserLoginView", owner: self, options: nil)?.first as!KRUserRegisterView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.registerView)
    }
    
    override func viewWillLayoutSubviews() {
         super.viewWillLayoutSubviews()
        self.registerView.frame = self.view.frame
    }


}
