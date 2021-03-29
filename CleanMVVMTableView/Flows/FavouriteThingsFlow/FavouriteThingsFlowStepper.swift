//
//  FavouriteThingsFlowStepper.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation
import RxFlow
import RxCocoa
import RxSwift

final class FavouriteThingsFlowStepper: Stepper {
    var steps =  PublishRelay<Step>.init()
    private let disposeBage = DisposeBag()
    
    var initialStep: Step {
        return FavouriteThingsFlowStep.thigsList
    }
    
}
