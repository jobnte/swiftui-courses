//
//  ContentView.swift
//  OpenWeather
//
//  Created by Jorge Bustamante on 18/07/24.
//

// OW Key: 61d68498ae544978a6c23ab4b4676d0c

import SwiftUI

struct ContentView: View {

    @ObservedObject var weatherViewModel: WeatherViewModel

    init(weatherViewModel: WeatherViewModel = .init()) {
        self.weatherViewModel = weatherViewModel
    }

    var body: some View {
        VStack {
            TextField("Enter city name:", text: $weatherViewModel.cityName) {
                weatherViewModel.search()
            }
            .font(.subheadline)
            .padding()
            .fixedSize()

            Text(weatherViewModel.temperature)
                .font(.title2)
                .foregroundStyle(.white)

            Text(weatherViewModel.humidity)
                .font(.title2)
                .foregroundStyle(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.green)
        .edgesIgnoringSafeArea(.all)
    }
}

// Creating an account in OpenWeatherMap service and get the app_id token.
// Implementing WebService and models (WeatherResponse & Weather)
// Create an observableObject to trigger the request
// Update the main view to show a textField and humidity/temperature

#Preview {
    ContentView()
}
