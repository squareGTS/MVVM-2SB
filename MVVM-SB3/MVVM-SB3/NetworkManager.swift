//
//  NetworkManager.swift
//  MVVM-SB3
//
//  Created by Maxim Bekmetov on 02.11.2022.
//

import Foundation

class NetworkManager: NSObject {

    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }

}
