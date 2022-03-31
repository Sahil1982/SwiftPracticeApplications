//
//  SignUpViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 22/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

   
    @IBOutlet weak var firstNameTextField: UITextField!
   

    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
 
    @IBOutlet weak var errorLabel: UILabel!
    
    var firstname = "Sahil"
    var lastname = "dadas"
    var email = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.layer.cornerRadius = 15
        lastNameTextField.layer.cornerRadius = 15
        emailTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
        errorLabel.layer.cornerRadius = 15
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func onClickButton(_ sender: AnyObject) {
        let vc =  self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        vc.email = emailTextField.text!
        vc.password = passwordTextField.text!
        present(vc, animated: true)
        
        if email == emailTextField.text! && password == passwordTextField.text!{
            let vc =  self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as!LoginViewController
                present(vc, animated: true)
                //navigationController?.pushViewController(vc, animated: true)
                //self.present(vc, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Alert", message: "Check entered details", preferredStyle: .alert)
            let ok = UIAlertAction(title:"ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert ,animated: true,completion: nil )
        }
    }


        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


