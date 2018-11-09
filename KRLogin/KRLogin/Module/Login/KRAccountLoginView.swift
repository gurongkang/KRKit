//
//  KRAccountLoginView.swift
//  KRLogin
//
//  Created by RK on 2018/11/9.
//  Copyright © 2018年 RK. All rights reserved.
//

import UIKit

protocol KRAccountLoginDelegate {
    func phoneLogin();
}

class KRAccountLoginView: UIView {
    var delegate:KRAccountLoginDelegate?
    
    @IBAction func phonelogin(_ sender: Any) {
        self.delegate?.phoneLogin()
    }
    
}
