//
//  LoginViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 22/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var text:String?

    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!

    var email = ""
    var password = ""
    var email1 = "sahildadas@gmail.com"
    var password1 = "sahil1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.layer.cornerRadius = 15
        lastNameTextField.layer.cornerRadius = 15
        signInButton.layer.cornerRadius = 15
        errorLabel.layer.cornerRadius = 15
        //firstNameTextField.text = email
        //lastNameTextField.text = password
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickLogin(_ sender: AnyObject) {
        if email != "" && password != "" {
        if email1 == firstNameTextField.text! && password1 == lastNameTextField.text!{
            let vc =  self.storyboard?.instantiateViewController(withIdentifier: "NVC") as! UINavigationController
            
            present(vc, animated: true)
        }
        else if (email == firstNameTextField.text! && password == lastNameTextField.text!) {
                let vc =  self.storyboard?.instantiateViewController(withIdentifier: "NVC") as! UINavigationController
                present(vc, animated: true)
        }else{
            let alert = UIAlertController(title: "Alert", message: "Check your email or password", preferredStyle: .alert)
            let ok = UIAlertAction(title:"ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert ,animated: true,completion: nil )
        }
        }
        else{
            let alert = UIAlertController(title: "Alert", message: "Check your email or password", preferredStyle: .alert)
            let ok = UIAlertAction(title:"ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert ,animated: true,completion: nil )
        }
    }
}
