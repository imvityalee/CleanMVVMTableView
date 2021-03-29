//
//  BaseViewModel.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation
import RxRelay
import RxFlow

class BaseViewModel: BaseViewModelProtocol {
    var steps = PublishRelay<Step>()

}
