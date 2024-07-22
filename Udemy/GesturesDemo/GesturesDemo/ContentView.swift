//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var tapped: Bool = false

    var body: some View {
       Card(tapped: tapped)
            .gesture(
                TapGesture()
                    .onEnded {
                        tapped.toggle()
                    }
            )
    }
}

// Implement TapGesture using .gesture viewModifier
// Use boolean value to change background color of the Card view.

#Preview {
    ContentView()
}
