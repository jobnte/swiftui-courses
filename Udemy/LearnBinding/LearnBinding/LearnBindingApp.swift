//
//  LearnBindingApp.swift
//  LearnBinding
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

@main
struct LearnBindingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppState())
        }
    }
}
