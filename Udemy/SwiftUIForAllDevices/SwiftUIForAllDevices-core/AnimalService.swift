//
//  AnimalService.swift
//  SwiftUIForAllDevices-core
//
//  Created by Jorge Bustamante on 25/07/24.
//

import Foundation

public final class AnimalService {

    public static func getAll() -> [Animal] {
        return [
            Animal(name: "Tiger", description: "This is tiger", image: "🐅"),
            Animal(name: "Rat", description: "This is rat", image: "🐀"),
            Animal(name: "Giraffe", description: "This is giraffe", image: "🦒"),
            Animal(name: "Cat", description: "This is cat", image: "🐈"),
        ]
    }
}
