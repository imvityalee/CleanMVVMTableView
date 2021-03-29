//
//  FavouriteThingsListConfigurator.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation


final class FavouriteThingsListConfigurator {
    
    static func configure(thingsService: FavouriteThingsServiceProtocol) -> BaseViewController {
        let viewModel = FavouriteThingsListViewModel(thingsService: thingsService)
        let viewController = FavouriteThingsListViewController(viewModel: viewModel)
        
        return viewController
    }
}
