//
//  ContentView.swift
//  GridSwiftUI2
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    let animals = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐨", "🐯"]
    @State private var sliderValue: CGFloat = 2

    var body: some View {

        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: Int(sliderValue))

        VStack {
            Slider(value: $sliderValue, in: 2...10, step: 1)
            Text(String(format: "%.0f", sliderValue))

            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(animals, id: \.self) { animal in
                        Text(animal)
                            .font(.system(size: 100))
                    }
                })
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
