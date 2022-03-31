//
//  SecondViewController.swift
//  toDo
//
//  Created by Cognizant on 25/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var addItem: UIButton!
    @IBAction func addItem(_ sender: AnyObject)
    {
        if (input.text != ""){
        list.append(input.text!)
        input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addItem.layer.cornerRadius = 15

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

