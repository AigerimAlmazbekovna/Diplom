//
//  User+CoreDataClass.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData

@objc(User)
public class User: NSManagedObject {
    convenience init() {
            self.init(entity: CoreDataManager.shared.entityForName("User"), insertInto: CoreDataManager.shared.context)
        }
    
}
