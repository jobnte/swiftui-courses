//
//  ContentView.swift
//  SwiftUIForAllDevices
//
//  Created by Jorge Bustamante on 24/07/24.
//

import SwiftUI
import SwiftUIForAllDevices_core

struct ContentView: View {

    private var animals = AnimalService.getAll()

    var body: some View {    
        List(animals, id: \.name) { animal in
            NavigationLink(
                destination: SharedDetailView(animal: animal)) {
                    HStack {
                        Text(animal.image)
                            .font(.largeTitle)
                        Text(animal.name)
                            .font(.title)
                    }
                }
        }
        .navigationTitle("Animals")
    }
}

// Create targets for different devices (watchOS - macOS) And core framework to share code between apps.
// Use of NavigationLink
// Implement core in watchOS application.
// Share views between targets
// Avoid creating #if #else check for sharing views
// Use of NavigationSplitView instead of NavigationView


#Preview {
    NavigationStack {
        ContentView()
    }
}
