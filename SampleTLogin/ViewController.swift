//
//  ViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 22/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!

    @IBOutlet weak var signInButton: UIButton!
    var radious = 15
    
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 15
        logInButton.layer.cornerRadius = 15
     
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signInButton(_ sender: AnyObject) {
        let vc =  self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as!LoginViewController
        present(vc ,animated: true)
        
    }
    @IBAction func loginButton(_ sender: AnyObject) {
        let vc =  self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as!SignUpViewController
        present(vc ,animated: true)
    }
}

