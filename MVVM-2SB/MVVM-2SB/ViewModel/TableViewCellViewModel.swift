//
//  TableViewCellViewModel.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 01.11.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var profile: Profile

    var fullName: String {
        return profile.name + " " + profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }

    init(profile: Profile) {
        self.profile = profile
    }
}
