//
//  FavouriteThingsDetailsViewController.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

class FavouriteThingsDetailsViewController: BaseViewController {

     var imageView = UIImageView()
     var nameLabel = UILabel()
    
    private let disposeBag = DisposeBag()
    
    var viewModel: FavouriteThingsDetailsViewModelProtocol!
    
    init(viewModel : FavouriteThingsDetailsViewModelProtocol) {
        self.viewModel = viewModel
        super.init(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        bindings()
    }
    
    private func bindings() {
        viewModel.things
            .drive(onNext: { [weak self] thing in
                self?.imageView.image = UIImage(named: thing.imageName)
                self?.title = thing.name
                self?.nameLabel.text = thing.name
            })
            .disposed(by: disposeBag)
    }
    
}


