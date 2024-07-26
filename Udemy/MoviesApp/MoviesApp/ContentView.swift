//
//  ContentView.swift
//  MoviesApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var store: MovieStore

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(store.movies ?? [Movie](), id: \.imdbID) { movie in
                        NavigationLink(destination: Text(movie.title)) {
                            VStack {
                                URLImage(url: movie.poster)
                                    .frame(width: 100, height: 150)

                                Text(movie.title)
                                    .frame(maxHeight: .infinity, alignment: .top)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Movies")
        }
        .onAppear {
            store.getAll()
        }
    }
}

// Recap of LazyVGrid, NavigationLink, VStack and downloading data from the server

#Preview {
    ContentView(store: MovieStore())
}
