//
//  HotCoffeeAppApp.swift
//  HotCoffeeApp
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

@main
struct HotCoffeeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
