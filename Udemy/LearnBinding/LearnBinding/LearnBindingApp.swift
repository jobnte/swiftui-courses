//
//  LearnBindingApp.swift
//  LearnBinding
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

@main
struct LearnBindingApp: App {
    @State private var state = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(state)
        }
    }
}
