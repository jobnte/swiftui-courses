//
//  ContentView.swift
//  HikingApp
//
//  Created by Jorge Bustamante on 17/07/24.
//

import SwiftUI

struct ContentView: View {

    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5),
    ]

    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

// Lesson 1
// Presenting a list of items using List {}
// List items should conforms identifiable protocol
// Presenting items using Image view -- also use modifiers like resizable, clipShape, aspectRatio
// Use formatted function for format numbers

// Lesson 2
// Use of extract view
// Pass model to sub-view -- subviews should be lightweight
// NavigationStack -- it is like putting view in a navigationController
// NavigationLink - perform navigation, the value needs to conform Hashable (it adds a disclosure indicator in our cells)
// NavigationDestination - it is connected to NavigationLike because the Hashable model

// Lesson 3
// Create a detail screen and passing to it the model
// Add NavigationStack to the preview in order to enable navigation view modifiers.


// Lesson 4 - animations
// Implementing onTapGesture
// Use of withAnimation for simpler animations

#Preview {
    ContentView()
}

struct HikeCellView: View {

    let hike: Hike

    var body: some View {
        HStack(alignment: .center) {
            Image(hike.photo)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
