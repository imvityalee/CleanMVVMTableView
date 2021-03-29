//
//  AppFlowStepper.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import Foundation
import RxCocoa
import RxSwift
import RxFlow

final class AppFlowStepper: Stepper {
    
    var steps = PublishRelay<Step>.init()
    
    var initialStep: Step {
        return RxFlowStep.home
        
    }
    
    func readyToEmitSteps() {
        steps.accept(AppFlowStep.favouriteThings)
    }
    
    
}
