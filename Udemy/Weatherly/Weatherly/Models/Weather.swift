//
//  Weather.swift
//  Weatherly
//
//  Created by Jorge Bustamante on 19/07/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
