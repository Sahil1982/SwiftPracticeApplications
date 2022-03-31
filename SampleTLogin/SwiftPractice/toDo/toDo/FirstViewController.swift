//
//  FirstViewController.swift
//  toDo
//
//  Created by Cognizant on 25/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

var list = ["Buy milk", "Run 5 miles", "Get peter", "Plant my new plants"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return (list.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier:"cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

