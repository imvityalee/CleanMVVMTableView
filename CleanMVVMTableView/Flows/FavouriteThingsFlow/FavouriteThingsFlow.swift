//
//  FavouriteThingsFlow.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxFlow

final class FavouriteThingsFlow: Flow {
    
    private let thingsService: FavouriteThingsServiceProtocol
    
    private let rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        viewController.modalPresentationStyle = .fullScreen
        return viewController
    }()

    var root: Presentable {
        return self.rootViewController
    }
    
    init(thingsService: FavouriteThingsServiceProtocol) {
        self.thingsService = thingsService
    }
    
    func navigate(to step: Step) -> FlowContributors {
        guard let steps = step as? FavouriteThingsFlowStep else { return .none}
        
        switch steps {
        case .thigsList:
            return favouriteThingsList()
        case .thingsDetails(let id):
            return favouriteThingsDetails(withId: id)
        }
    }
    
    private func push(viewController: BaseViewController) -> FlowContributors {
        rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(withNextPresentable: viewController, withNextStepper: viewController.stepper, allowStepWhenNotPresented: false))
    }
    
    private func favouriteThingsList() -> FlowContributors {
        let viewController = FavouriteThingsListConfigurator.configure(thingsService: thingsService)
        return push(viewController: viewController)
    }
     
    private func favouriteThingsDetails(withId: Int) -> FlowContributors {
        let viewController = FavouriteDetailsConfigurator.configure(favThingService: thingsService, favThingID: withId)
        return push(viewController: viewController)
    }
    
    
}
