//
//  firstViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 29/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit
import CoreData

var List: [String] = []

class firstViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource {
    

   
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (List.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = List[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete{
            List.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        
            myTableView.reloadData()
        
        }
    }


