//
//  WeatherService.swift
//  OpenWeather
//
//  Created by Jorge Bustamante on 18/07/24.
//

import Foundation

final class WeatherService {

    func getWeather(city: String) async -> Weather? {

        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=61d68498ae544978a6c23ab4b4676d0c&units=metric") else {
            return nil
        }


        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse.main
        } catch {
            return nil
        }
    }
}
