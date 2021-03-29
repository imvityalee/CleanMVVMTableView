//
//  ViewController.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/26/21.
//

import UIKit
import RxFlow

class BaseViewController: UIViewController {
    

    
    private var viewModel: BaseViewModelProtocol!
    
    var stepper: Stepper {
        viewModel
    }
    
    init(viewModel: BaseViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: Self.self), bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

