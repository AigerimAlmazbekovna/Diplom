//
//  Post+CoreDataProperties.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 11.11.2024.
//
//

import Foundation
import CoreData


extension Post {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Post> {
        return NSFetchRequest<Post>(entityName: "Post")
    }

    @NSManaged public var date: Date?
    @NSManaged public var image: Data?
    @NSManaged public var text: String?
    @NSManaged public var user: User?
    @NSManaged public var userPostFavorite: User?

}

extension Post : Identifiable {

}
