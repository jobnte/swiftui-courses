//
//  ContentView.swift
//  SwiftUIForAllDevices-macOS
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct AnimalList: View {
    
    private let animals = AnimalService.getAll()
    @Binding var selectedAnimal: Animal?

    var body: some View {
        List(animals, id: \.name) { animal in
            VStack {
                Text(animal.image)
                    .font(.custom("Arial", size: 100))
                Text(animal.name)
            }
            .onTapGesture {
                selectedAnimal = animal
            }
        }
    }
}

struct ContentView: View {
    @State private var selectedAnimal: Animal? = nil

    var body: some View {
        NavigationSplitView {
            AnimalList(selectedAnimal: $selectedAnimal)
        } detail: {
            SharedDetailView(animal: selectedAnimal ?? .placeholder)
        }
    }
}

#Preview {
    ContentView()
}
