//
//  ViewModel.swift
//  MVVM-1SB
//
//  Created by Maxim Bekmetov on 31.10.2022.
//

import Foundation

class ViewModel {
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)

    var name: String {
        return profile.name
    }

    var secondName: String {
        return profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }
}
