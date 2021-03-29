//
//  FavouriteThingsService.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation

final class FavouriteThingsService: FavouriteThingsServiceProtocol {
    
    private let things: [FavouriteThings] = [
        FavouriteThings(id: 0, name: "Cat", imageName: "cat"),
        FavouriteThings(id: 1, name: "Macbook", imageName: "macbook"),
        FavouriteThings(id: 2, name: "PS5", imageName: "ps5"),
        FavouriteThings(id: 3, name: "Iphone", imageName: "iphone"),
        FavouriteThings(id: 4, name: "Guitar", imageName: "guitar")
    ]
    
    func favThingsList() -> [FavouriteThings] {
        things
    }
    
    func thing(with id: Int) -> FavouriteThings? {
        things.first(where: {$0.id == id})
    }
    
    
}
