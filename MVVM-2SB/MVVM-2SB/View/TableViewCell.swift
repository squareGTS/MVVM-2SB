//
//  TableViewCell.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 31.10.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fulNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fulNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
