//
//  Report.swift
//  BarGraphDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import Foundation

struct Report: Hashable {
    let year: String
    let revenue: Double
}

extension Report {
    static func all() -> [Report] {
        return [
            .init(year: "2021", revenue: 2500),
            .init(year: "2022", revenue: 4500),
            .init(year: "2023", revenue: 5500),
            .init(year: "2024", revenue: 8500),
        ]
    }
}
