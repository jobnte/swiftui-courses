//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI



struct ContentView: View {

    private let animals = ["🐱", "🦒", "🐈", "🐅", "🐀", "🦉"]
    private let fruits = ["🍏","🍎","🫐","🍅","🥬","🍌"]
    @State private var fruitsExpanded: Bool = false
    @State private var isExpanded: Bool = true

    var body: some View {
        Form {
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    HStack {
                        ForEach(animals, id: \.self) { animal in
                            Text(animal)
                                .font(.headline)
                        }
                    }
                },
                label: { Text("Animals") }
            )

            DisclosureGroup(
                isExpanded: $fruitsExpanded,
                content: {
                    List(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.headline)
                    }
                },
                label: { Text("Fruits") }
            )
        }
    }
}

// Use of DisclosureGroup to show expandable views
// Understand difference between OutlineGroup and DisclosureGroup

#Preview {
    ContentView()
}
