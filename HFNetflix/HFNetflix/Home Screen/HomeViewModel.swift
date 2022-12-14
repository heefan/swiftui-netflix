//
//  HomeViewModel.swift
//  HFNetflix
//
//  Created by LI Tian on 20/11/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    // String == Category
    @Published var movies = [String: [Movie]]()
    
    public var allCategories: [String] {
         movies.keys.map({String($0)})
    }
    
    init() {
        setupMovies()
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        movies[cat] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-up Comedy"] = exampleMovies
        movies["New Release"] = exampleMovies
        movies["Watch it again"] = exampleMovies
        movies["Sci"] = exampleMovies
    }
}
