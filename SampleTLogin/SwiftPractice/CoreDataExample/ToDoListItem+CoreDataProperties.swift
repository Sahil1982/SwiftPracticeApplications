//
//  ToDoListItem+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Cognizant on 29/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem");
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: NSDate?

}
