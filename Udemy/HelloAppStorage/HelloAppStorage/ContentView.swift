//
//  ContentView.swift
//  HelloAppStorage
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct Settings: Codable {
    let darkMode: Bool
    let name: String
}

struct ContentView: View {

    @AppStorage("settings")
    private var settingsData: Data = Data()

    @State private var output = ""

    var body: some View {
        VStack {

            Text(output)

            Button("Load from App Storage") {

                guard let settings = try?                JSONDecoder().decode(Settings.self, from: settingsData) else {
                    return
                }

                output = "IsDarkMode: \(settings.darkMode) - Name: \(settings.name)"
            }

            Button("Save in App Storage") {
                let settings = Settings(darkMode: true, name: "Jhon Doe")
                guard let settingsData = try? JSONEncoder().encode(settings) else {
                    return
                }

                self.settingsData = settingsData
            }
        }
        .padding()
    }
}

// Store custom objects in AppStorage using Data and JSONDecoder/JSONEncoder

#Preview {
    ContentView()
}
