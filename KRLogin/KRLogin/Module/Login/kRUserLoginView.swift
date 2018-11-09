//
//  kRUserLoginView.swift
//  KRLogin
//
//  Created by RK on 2018/11/5.
//  Copyright © 2018年 RK. All rights reserved.
//

import UIKit

protocol KRPhoneLoginDelegate {
    func accountLogin()
}

class KRPhoneLoginView: UIView {
    @IBOutlet weak var loginButton: UIButton!
    
    var delegate:KRPhoneLoginDelegate?
    
    @IBAction func accountLogin(_ sender: Any) {
        self.delegate?.accountLogin()
    }
}
