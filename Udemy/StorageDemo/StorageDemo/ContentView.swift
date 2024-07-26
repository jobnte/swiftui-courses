//
//  ContentView.swift
//  StorageDemo
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI


struct ContentView: View {

    @AppStorage("isDarkMode")
    private var isDarkMode: Bool = false

    var body: some View {
        VStack {
            Text(isDarkMode ? "DARK" : "LIGHT")
            Toggle(isOn: $isDarkMode) {
                Text("Select Mode")
            }.fixedSize()
        }
    }
}

// Basic usage of property wrapper @AppStorage for storage in UserDefaults

#Preview {
    ContentView()
}
