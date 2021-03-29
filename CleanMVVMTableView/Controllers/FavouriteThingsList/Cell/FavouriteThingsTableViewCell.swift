//
//  FavouriteThingsTableViewCell.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/28/21.
//

import UIKit

class FavouriteThingsTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    
    
    func update(with name: String) {
        nameLabel.text = name
    }
    
}
