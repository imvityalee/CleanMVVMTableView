//
//  FavouriteThingsFlowStep.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxFlow

enum FavouriteThingsFlowStep: Step {
    case thigsList
    case thingsDetails(thingId: Int)
}
