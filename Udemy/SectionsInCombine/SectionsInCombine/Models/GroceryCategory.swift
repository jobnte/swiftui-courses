//
//  GroceryCategory.swift
//  SectionsInCombine
//
//  Created by Jorge Bustamante on 23/07/24.
//

import Foundation

struct GroceryCategory {
    let title: String
    let groceryItems: [GroceryItem]
}

extension GroceryCategory {

    static func all() -> [GroceryCategory] {
        return [
            GroceryCategory(
                title: "HEB",
                groceryItems: [
                    GroceryItem(
                        title: "Milk",
                        price: 4.5
                    ),
                    GroceryItem(
                        title: "Cookies",
                        price: 5.0
                    )
                ]
            ),
            GroceryCategory(
                title: "Fiesta",
                groceryItems: [
                    GroceryItem(
                        title: "Fish",
                        price: 10
                    ),
                    GroceryItem(
                        title: "Juice",
                        price: 3.50
                    )
                ]
            )
        ]
    }
}

struct GroceryItem {
    let title: String
    let price: Double
}
