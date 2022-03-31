//
//  SignUpViewController.swift
//  CustomLoginDemo
//
//  Created by Cognizant on 18/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!

    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

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
    
    
    @IBAction func SignUpTapped(_ sender: AnyObject) {
    }

}
