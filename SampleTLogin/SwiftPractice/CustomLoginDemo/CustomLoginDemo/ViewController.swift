//
//  ViewController.swift
//  CustomLoginDemo
//
//  Created by Cognizant on 18/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignUpButton.layer.cornerRadius = 15
        LoginButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

