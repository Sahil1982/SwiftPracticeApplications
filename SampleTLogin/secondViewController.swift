//
//  secondViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 29/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit
import CoreData

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItemButton(_ sender: AnyObject)
    {
        if (input.text != ""){
            List.append(input.text!)
            input.text = ""
            
        }
        else{
        
        }
        
    }

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

}
