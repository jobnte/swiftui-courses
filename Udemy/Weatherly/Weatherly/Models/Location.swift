//
//  Location.swift
//  Weatherly
//
//  Created by Jorge Bustamante on 19/07/24.
//

import Foundation

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}
