//
//  Hike.swift
//  HikingApp
//
//  Created by Jorge Bustamante on 17/07/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
