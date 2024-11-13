//
//  Stories+CoreDataClass.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData

@objc(Stories)
public class Stories: NSManagedObject {
    convenience init() {
            self.init(entity: CoreDataManager.shared.entityForName("Stories"), insertInto: CoreDataManager.shared.context)
        }
    
}
