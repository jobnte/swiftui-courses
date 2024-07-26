//
//  MovieListViewModel.swift
//  MovieSearchAPI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

@MainActor
class MovieListViewModel: ObservableObject {

    @Published var movies: [MovieViewModel] = []

    func search(name: String) async {
        do {
            let movies = try await Webservice().getMovies(searchTerm: name)
            self.movies = movies.map(MovieViewModel.init)

        } catch {
            print(error)
        }
    }

}

struct MovieViewModel {

    let movie: Movie

    var imdbId: String {
        movie.imdbID
    }

    var title: String {
        movie.title
    }

    var poster: URL? {
        URL(string: movie.poster)
    }
}
