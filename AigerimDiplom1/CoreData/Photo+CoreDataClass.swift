//
//  Photo+CoreDataClass.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData

@objc(Photo)
public class Photo: NSManagedObject {
    convenience init() {
           self.init(entity: CoreDataManager.shared.entityForName("Photo"), insertInto: CoreDataManager.shared.context)
       }
    
}
