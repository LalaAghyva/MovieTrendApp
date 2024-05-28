//
//  MovieTableCellViewModel.swift
//  MovieTrendApp
//
//  Created by Lala on 28.05.24.
//

import Foundation

class MovieTableCellViewModel {
    
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.date = "\(movie.voteAverage)/ 10"
        self.rating = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.imageUrl = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAdress)\(imageCode)")
    }
}
