//
//  ViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 11/26/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let centerx = self.view.center.x
        let centery = self.view.center.y
        
        let loginButton = FBSDKLoginButton()
        
        
        loginButton.center = CGPoint(x: centerx, y: centery + CGFloat(centery/3))
        self.view.addSubview(loginButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

