//
//  SwiftDataAppApp.swift
//  SwiftDataApp
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

@main
struct SwiftDataAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
