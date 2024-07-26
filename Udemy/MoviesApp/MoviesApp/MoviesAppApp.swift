//
//  MoviesAppApp.swift
//  MoviesApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

@main
struct MoviesAppApp: App {
    @StateObject var store = MovieStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
