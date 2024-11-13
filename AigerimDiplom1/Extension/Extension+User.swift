//
//  Extension+User.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import Foundation
extension User {
    func changeSubscribeState(for user: User) {
        if user.isFollower(user: self) == true {
            unsubscribeTo(user: user)
        } else {
            subscribeTo(user: user)
        }
    }
    
    private func subscribeTo(user: User) {
    //    self.addToSubscriptions(user)
        user.addToFollowers(self)
        try? managedObjectContext?.save()
    }
    
    private func unsubscribeTo(user: User) {
   //     self.removeFromSubscriptions(user)
        user.removeFromFollowers(self)
        try? managedObjectContext?.save()
    }
    
    func isFollower(user: User) -> Bool? {
        self.followers?.contains(user)
    }
    
    func changeFavoritePostState(for post: Post) {
        if self.isFavoritePost(post: post) == true {
            unfavoritePostTo(post: post)
        } else {
            favoritePostTo(post: post)
        }
    }
    private func favoritePostTo(post: Post) {
    //    self.addToFavoritesPost(post)
        try? managedObjectContext?.save()
    }
    private func unfavoritePostTo(post: Post) {
     //   self.removeFromFavoritesPost(post)
        try? managedObjectContext?.save()
    }
    func isFavoritePost(post: Post) -> Bool? {
        self.favoritesPost?.contains(post)
    }
}
