//
//  Store.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

class Store: ObservableObject {

    @Published var selectedUnit: TemperatureUnit = .kelvin
    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()

    init() {
        selectedUnit = UserDefaults.standard.unit
    }

    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
