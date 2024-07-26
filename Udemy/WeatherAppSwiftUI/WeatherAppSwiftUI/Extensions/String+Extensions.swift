//
//  String+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

extension String {

    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
