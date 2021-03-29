//
//  FavouriteThingsDetailsViewModelProtocol.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxFlow
import RxCocoa


protocol FavouriteThingsDetailsViewModelProtocol: BaseViewModelProtocol {
    var things: Driver<FavouriteThings> { get }
}
