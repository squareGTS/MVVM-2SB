//
//  ViewModel.swift
//  MVVM-SB3
//
//  Created by Maxim Bekmetov on 02.11.2022.
//

import Foundation

class ViewModel: NSObject {

    @IBOutlet weak var networkManager: NetworkManager!

    private var movies: [String]?

    func fetchMoview(completion: @escaping() -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }

    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }

    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let moviews = movies else { return "" }
        return moviews[indexPath.row]
    }
}
