//
//  ContentView.swift
//  GridDemo
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

struct ContentView: View {

    let dishes = Dish.all()

    var body: some View {

        let chunkedDishes = dishes.chunked(into: 2)

        return List {
            // rows
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageURL)
                            .resizable()
                            .scaledToFit()

                    }
                }
            }
        }
    }
}

// Displaying a grid using ForEach and HStack

#Preview {
    ContentView()
}
