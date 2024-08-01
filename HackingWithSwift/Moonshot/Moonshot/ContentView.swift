//
//  ContentView.swift
//  Moonshot
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    @State private var showingGrid = true

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showingGrid.toggle()
                    }, label: {
                        Text("Grid/List")
                    })
                }
            })
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

// Resizing image
// Introducing to ScrollView (horizontal and vertical)
// Using NavigationStack to push views with NavigationLink in a list

// Basic usage of LazyHGrid and LazyVGrid
// Decoding data from json local file

#Preview {
    ContentView()
}
