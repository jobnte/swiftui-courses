//
//  ContentView.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


// Create Date, String, UserDefaults and View extensions
// Create constants class to store the endpoints
// Create authorization for OpenWeatherMap API
// Download Image using ImageLoader custom class
// Implement MVVM pattern
