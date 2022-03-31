//
//  LoginViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 22/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.layer.cornerRadius = 15
        lastNameTextField.layer.cornerRadius = 15
        signInButton.layer.cornerRadius = 15
        errorLabel.layer.cornerRadius = 15
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
