//
//  ContentView.swift
//  SwiftUIForAllDevices-watchOS Watch App
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import SwiftUIForAllDevices_core

struct ContentView: View {

    private let animals = AnimalService.getAll()

    var body: some View {
        List {
            ForEach(animals, id: \.name) { animal in
                NavigationLink(
                    destination: SharedDetailView(animal: animal)) {
                        AnimalCell(animal: animal)
                    }
            }
        }
        .listStyle(.carousel)
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}

struct AnimalCell: View {

    let animal: Animal

    var body: some View {
        VStack(alignment: .center) {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
            Text(animal.name)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}
