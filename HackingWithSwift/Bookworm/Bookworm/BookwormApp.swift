//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
