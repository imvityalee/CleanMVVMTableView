//
//  FavouriteThingsListViewController.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit
import RxSwift
import RxCocoa

class FavouriteThingsListViewController: BaseViewController {

    private let disopseBag = DisposeBag()
    
    
    var viewModel: FavouriteThingsListViewModelProtocol!
    
    init(viewModel: FavouriteThingsListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(viewModel: viewModel)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @IBOutlet weak  private var tableView: UITableView! {
        didSet {
            tableView.estimatedRowHeight = UITableView.automaticDimension
            tableView.register(UINib(nibName: "FavouriteThingsTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "FavouriteThingsTableViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewBindings()
    }
 
    
    private func tableViewBindings() {
        viewModel.selectedThingList
            .asObservable()
            .bind(to: tableView.rx.items(cellIdentifier: "FavouriteThingsTableViewCell")) { _, thing, cell in
                ( cell as? FavouriteThingsTableViewCell)?.update(with: thing.name)
            }
            .disposed(by: disopseBag)
        
        tableView.rx
            .modelSelected(FavouriteThings.self)
            .bind(to: viewModel.selectedThing)
            .disposed(by: disopseBag)
        
        tableView.rx
            .itemSelected
            .subscribe(onNext: { [weak self] indexPath in
                self?.tableView.deselectRow(at: indexPath, animated: true)
            })
            .disposed(by: disopseBag)
        
        title = viewModel.title
    }

  

}
