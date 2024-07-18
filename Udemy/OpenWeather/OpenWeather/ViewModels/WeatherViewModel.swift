//
//  WeatherViewModel.swift
//  OpenWeather
//
//  Created by Jorge Bustamante on 18/07/24.
//

import Foundation

final class WeatherViewModel: ObservableObject {

    private var weatherService: WeatherService
    @Published var weather = Weather()

    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }

    var humidity: String {
        if let humidity = weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }

    var cityName: String = ""

    init(weatherService: WeatherService = WeatherService()) {
        self.weatherService = weatherService
    }

    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            Task {
                await fetchWeather(by: city)
            }
        }
    }

    private func fetchWeather(by city: String) async {
        if let weather = await weatherService.getWeather(city: city) {
            self.weather = weather
        }
    }
}
