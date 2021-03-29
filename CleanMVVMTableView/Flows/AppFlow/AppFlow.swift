//
//  AppFlow.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit
import RxFlow

final class AppFlow: Flow {
    
    private var rootViewContoller = UIViewController()
    
    var root: Presentable {
        return self.rootViewContoller
    }
    
    init() {
        self.rootViewContoller =  UIViewController()
    }
     
    func navigate(to step: Step) -> FlowContributors {
        guard let steps = step as? AppFlowStep else {return .none}
        switch steps {
        case .favouriteThings:
            return naviagitonFavouritThings()
        }
    }
    
    private func naviagitonFavouritThings() -> FlowContributors {
        let favThingsService = FavouriteThingsService()
        let favThingsFlow = FavouriteThingsFlow(thingsService: favThingsService)
        
        Flows.whenReady(flow1: favThingsFlow) { [unowned self]  root in
            self.rootViewContoller.present(root, animated: true, completion: nil)
            
        }
        
        let favThingsStepper = FavouriteThingsFlowStepper()
        
        return .one(flowContributor: .contribute(withNextPresentable: favThingsFlow, withNextStepper: favThingsStepper, allowStepWhenNotPresented: false))
        
    }
    
    
}
