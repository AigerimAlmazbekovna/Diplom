//
//  Photo+CoreDataProperties.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var date: Date?
    @NSManaged public var image: Data?
    @NSManaged public var user: User?

}

extension Photo : Identifiable {

}
