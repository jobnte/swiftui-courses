//
//  UserDefaults+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

extension UserDefaults {

    var unit: TemperatureUnit {
        guard let value = self.value(forKey: "unit") as? String else {
            return .kelvin
        }
        return TemperatureUnit(rawValue: value) ?? .kelvin
    }
}
