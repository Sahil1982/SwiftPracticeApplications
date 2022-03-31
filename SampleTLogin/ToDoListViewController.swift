//
//  ToDoListViewController.swift
//  SampleTLogin
//
//  Created by Cognizant on 29/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit
import CoreData

var array = [NSManagedObject]()

class ToDoListViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: Selector("addItem"))
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Entity")
        do{
            let result = try managedContext.fetch(fetchRequest)
            array = result as! [NSManagedObject]
        }
        catch{
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addItem()
    {
        
        let alertController = UIAlertController(title: "Type something please", message: "Type something", preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Add", style: .default) {(_) in
            if var field = alertController.textFields![0] as? UITextField
            {
                self.saveItem(itemToSave: field.text!)
                self.tableView.reloadData()
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        alertController.addTextField
            { (textField) in
        textField.placeholder = "Type something!!!!!"
            }
        self.present(alertController, animated: true, completion: nil)
    }
            func saveItem(itemToSave: String){
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let managedContext = appDelegate.persistentContainer.viewContext
                let entity = NSEntityDescription.entity(forEntityName: "Entity", in: managedContext)
                let item = NSManagedObject(entity: entity!, insertInto: managedContext)
                item.setValue(itemToSave, forKey: "item")
        
                do{
                    try managedContext.save()
                    array.append(item)
            
                }catch{
            
                }
            }
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            
            let item = array[indexPath.row]
            cell?.textLabel?.text = item.value(forKey: "item") as! String?
            
            return cell!
        }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let managedContext = appDelegate.persistentContainer.viewContext
            managedContext.delete(array[indexPath.row])
            array.remove(at: indexPath.row)
            
            self.tableView.reloadData()
            
            
            
            
        }
    }
}

