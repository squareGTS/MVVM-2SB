//
//  TableViewController.swift
//  MVVM-SB3
//
//  Created by Maxim Bekmetov on 02.11.2022.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var viewModel: ViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchMoview { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)

        return cell
    }
}
