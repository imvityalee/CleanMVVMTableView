//
//  FavouriteThingsListViewModel.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import RxRelay
import RxCocoa
import RxSwift
import RxFlow
import Foundation


final class FavouriteThingsListViewModel: BaseViewModel, FavouriteThingsListViewModelProtocol {
    
    private let disposeBag = DisposeBag()
    
    var selectedThing = PublishRelay<FavouriteThings>()
    
    var selectedThingList: Driver<[FavouriteThings]>
    
    var title: String = "Choose your title"

    
    init(thingsService: FavouriteThingsServiceProtocol) {
        let things = thingsService.favThingsList()
        self.selectedThingList = Driver<[FavouriteThings]>.just(things)
        super.init()
        bindings()
    }
    
    private func bindings() {
        selectedThing
            .map{ $0.id }
            .subscribe(onNext: { [weak self] id in
                self?.steps.accept(FavouriteThingsFlowStep.thingsDetails(thingId: id))   
            })
            .disposed(by: disposeBag)
    }
    
}
