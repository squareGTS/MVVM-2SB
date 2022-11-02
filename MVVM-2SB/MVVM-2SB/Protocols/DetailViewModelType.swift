//
//  DetailViewModelType.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 01.11.2022.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
