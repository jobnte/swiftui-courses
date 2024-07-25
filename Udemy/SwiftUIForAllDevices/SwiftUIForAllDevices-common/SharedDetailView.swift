//
//  SharedDetailView.swift
//  SwiftUIForAllDevices
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import SwiftUIForAllDevices_core

struct SharedDetailView: View {
    let animal: Animal

    var body: some View {
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
            Text(animal.name)
            Text(animal.description)
        }
    }
}

#Preview {
    SharedDetailView(
        animal: Animal(
            name: "Cat",
            description: "This is a cat",
            image: "🐈"
        )
    )
}
