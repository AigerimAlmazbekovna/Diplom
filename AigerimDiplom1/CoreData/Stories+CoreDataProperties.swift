//
//  Stories+CoreDataProperties.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData


extension Stories {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stories> {
        return NSFetchRequest<Stories>(entityName: "Stories")
    }

    @NSManaged public var date: Date?
    @NSManaged public var image: Data?
    @NSManaged public var user: User?

}

extension Stories : Identifiable {

}
