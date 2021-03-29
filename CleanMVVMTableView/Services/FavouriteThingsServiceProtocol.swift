//
//  FavouriteThingsServiceProtocol.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation


protocol FavouriteThingsServiceProtocol {
    func favThingsList() -> [FavouriteThings]
    func thing(with id: Int) -> FavouriteThings?
}
