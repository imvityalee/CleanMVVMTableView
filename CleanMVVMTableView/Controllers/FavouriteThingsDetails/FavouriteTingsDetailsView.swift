//
//  FavouriteTingsDetailsView.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit
import SnapKit

extension FavouriteThingsDetailsViewController {
        
     func setUpViews() {
        setupImageView()
        setUpLabel()
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.width.equalTo(390)
            make.height.equalTo(220)
            make.topMargin.equalTo(40)
            make.trailing.equalTo(-10)
            make.leading.equalTo(10)
            
        }
    }
        
    private func setUpLabel() {
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom)
            make.center.equalToSuperview()
        }
    }
}
