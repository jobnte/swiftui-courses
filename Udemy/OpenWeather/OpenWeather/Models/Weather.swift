//
//  Weather.swift
//  OpenWeather
//
//  Created by Jorge Bustamante on 18/07/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
