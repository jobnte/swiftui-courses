//
//  Store.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

class Store: ObservableObject {

    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()

    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
