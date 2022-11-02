//
//  TableViewCellViewModelType.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 01.11.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
