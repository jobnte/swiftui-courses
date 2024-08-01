//
//  Resorts.swift
//  SnowSeeker
//
//  Created by Jorge Bustamante on 2/08/24.
//

import SwiftUI

@Observable
final class Resorts {
    private(set) var resorts: [Resort]

    enum filterBy { case all, country, size, price }

    enum sortBy { case general, alphabetical, country }

    var resortSizes: [String] = ["Small", "Average", "Large"]
    var resortPrices = [String]()
    var resortCountries = [String]()

    init() {
        self.resorts = []
        self.resorts = Bundle.main.decode("resorts.json")

        let prices = resorts.map { String(repeating: "$", count: $0.price) }
        let pricesSet = Set(prices)
        resortPrices = Array(pricesSet)

        let countries = resorts.map { $0.country }
        let countriesSet = Set(countries)
        resortCountries = Array(countriesSet)
    }

    func sortResorts(by: sortBy) {
        switch by {
        case .general:
            self.resorts = self.resorts.sorted()
        case .country:
            self.resorts = self.resorts.sorted { (lhs, rhs) -> Bool in
                lhs.country < rhs.country
            }
        case .alphabetical:
            self.resorts = self.resorts.sorted { (lhs, rhs) -> Bool in
                lhs.name < rhs.name
            }
        }
    }

    func resetFilters() {
        self.resorts = Bundle.main.decode("resorts.json")
    }
}
