//
//  Box.swift
//  MVVM-2SB
//
//  Created by Maxim Bekmetov on 02.11.2022.
//

import Foundation

class Box<T> { // обертка
    typealias Listener = (T) -> ()

    var listener: Listener?

    var value: T {
        didSet {
            listener?(value)
        }
    }

    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }

    init(value: T) {
        self.value = value
    }
}
