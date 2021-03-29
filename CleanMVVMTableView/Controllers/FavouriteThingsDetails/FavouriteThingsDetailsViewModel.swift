//
//  FavouriteThingsDetailsViewModel.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxRelay
import RxCocoa


class FavouriteThingsDetailsViewModel: BaseViewModel, FavouriteThingsDetailsViewModelProtocol {
    var things: Driver<FavouriteThings>
    
    init(thingsService: FavouriteThingsServiceProtocol, thingId: Int) {
        let thing = thingsService.thing(with: thingId)!
        self.things = Driver<FavouriteThings>.just(thing)
    }
    
   
}
