//
//  WeatherViewModel.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

struct WeatherViewModel {

    let weather: Weather

    let id = UUID()

    var temperature: Double {
        return weather.temperature
    }

    var city: String {
        return weather.city
    }

    var icon: String {
        return weather.icon
    }

    var sunrise: Date {
        return weather.sunrise
    }

    var sunset: Date {
        return weather.sunset
    }
}
