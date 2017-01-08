//
//  ViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 11/26/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 82.0, green: 170.0, blue: 94.0, alpha: 1.0)
        
        let centerx = self.view.center.x
        let centery = self.view.center.y
        
        let loginButton: FBSDKLoginButton = {
            let button = FBSDKLoginButton()
            button.readPermissions = ["email"]
            return button
        }()
        
        
        loginButton.center = CGPoint(x: centerx, y: centery + CGFloat(centery/3))
        self.view.addSubview(loginButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    public func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        performSegue(withIdentifier: "mainEntry", sender: self)
    }
    
    
    
    public func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    
    
    @IBAction func performLogin(_ sender: AnyObject) {
        
    }
    

}

