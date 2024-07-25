//
//  Animal.swift
//  SwiftUIForAllDevices-core
//
//  Created by Jorge Bustamante on 25/07/24.
//

import Foundation

public struct Animal: Hashable {
    public let name: String
    public let description: String
    public let image: String

    public init(name: String, description: String, image: String) {
        self.name = name
        self.description = description
        self.image = image
    }
}

public extension Animal {

    public static var placeholder: Animal {
        Animal(name: "", description: "", image: "")
    }
}
