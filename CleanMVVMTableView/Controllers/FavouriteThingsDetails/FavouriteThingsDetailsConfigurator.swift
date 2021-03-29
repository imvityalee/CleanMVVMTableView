//
//  FavouriteThingsDetailsConfigurator.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit
import RxFlow

final class FavouriteDetailsConfigurator {
    
    static func configure(favThingService: FavouriteThingsServiceProtocol, favThingID: Int) -> BaseViewController {
        let viewModel = FavouriteThingsDetailsViewModel(thingsService: favThingService, thingId: favThingID)
        let viewController = FavouriteThingsDetailsViewController(viewModel: viewModel)
            return viewController
    }
}
