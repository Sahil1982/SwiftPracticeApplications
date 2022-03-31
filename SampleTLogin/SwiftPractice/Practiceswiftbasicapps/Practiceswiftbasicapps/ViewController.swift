//
//  ViewController.swift
//  Practiceswiftbasicapps
//
//  Created by Cognizant on 25/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var isPurple = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColor(_ sender: AnyObject) {
        
        if isPurple{
            view.backgroundColor = UIColor.red
            isPurple = false
        }else {
            view.backgroundColor = UIColor.purple
            isPurple = true
        }
    }

}

