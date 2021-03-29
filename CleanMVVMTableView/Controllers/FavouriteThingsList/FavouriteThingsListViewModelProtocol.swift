//
//  FavouriteThingsListViewModelProtocol.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxCocoa
import RxFlow
import RxRelay


protocol FavouriteThingsListViewModelProtocol: BaseViewModelProtocol {
    var selectedThing: PublishRelay<FavouriteThings> { get }
    var selectedThingList: Driver<[FavouriteThings]> { get }
    var title: String { get }
}
