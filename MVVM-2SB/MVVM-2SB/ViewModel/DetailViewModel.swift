//
//  DetailViewModel.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 02.11.2022.
//

import Foundation

class DetailViewModel: DetailViewModelType {

    private var profile: Profile

    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old")
    }

    init(profile: Profile) {
        self.profile = profile
    }
}
