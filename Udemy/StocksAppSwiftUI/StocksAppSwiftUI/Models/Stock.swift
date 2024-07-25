//
//  Stock.swift
//  StocksAppSwiftUI
//
//  Created by Jorge Bustamante on 25/07/24.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
