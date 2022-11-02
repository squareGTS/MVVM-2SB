//
//  TableViewModelType.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 01.11.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?

    func viewModelForCelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
}
