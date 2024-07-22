//
//  ContentView.swift
//  Weatherly
//
//  Created by Jorge Bustamante on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var city:  String = ""
    @State private var isFetchingWater: Bool = false
    @State private var weather: Weather?
    let geocodingClient = GeocodingClient()
    let weatherClient = WeatherClient()

    var body: some View {
        VStack {
            TextField("City", text: $city)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    isFetchingWater = true
                }
                .task(id: isFetchingWater) {
                    if isFetchingWater {
                        await fetchWeather()
                        isFetchingWater = false
                        city = ""
                    }
                }

            Spacer()

            if let weather = weather {
                Text(MeasurementFormatter.temperature(value: weather.temp))
                    .font(.system(size: 100))
            }

            Spacer()
        }
        .padding()
    }

    private func fetchWeather() async {
        do {
            guard let location = try await geocodingClient.coordinateByCity(city) else { return }
            weather = try await weatherClient.fetchWeather(location: location)
        } catch {
            print(error)
        }
    }
}

#Preview {
    ContentView()
}
