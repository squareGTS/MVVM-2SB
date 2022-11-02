//
//  DetailViewController.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 01.11.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    var viewModel: DetailViewModelType?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
}
