//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Cognizant on 29/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CoreData To Do List"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        retuen 1
    }
    cellforrowatind

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //Core data
    func getAllItems(){
        do {
            let items = context.fetch(ToDoListItem.fetchRequest())
        }
        catch{
            //error
        }
    }
    
    func createItem(name: String){
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date() as NSDate?
        do{
            try context.save()
        }
        catch{
            
        }
    }
    
    func deleteItem(item: ToDoListItem){
        context.delete(item)
        do{
            try context.save()
        }
        catch{
            
        }
    }
    
    func updateItem(item: ToDoListItem, newName: String){
        item.name = newName
        do{
            try context.save()
        }
        catch{
            //error
        }
        
    }
}

