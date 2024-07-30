//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
