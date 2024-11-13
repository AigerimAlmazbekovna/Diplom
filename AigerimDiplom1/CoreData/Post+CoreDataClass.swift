//
//  Post+CoreDataClass.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData

@objc(Post)
public class Post: NSManagedObject {
    convenience init() {
          self.init(entity: CoreDataManager.shared.entityForName("Post"), insertInto: CoreDataManager.shared.context)
      }
    
}
