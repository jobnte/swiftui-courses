//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var tapped: Bool = false
    @State private var dragState: CGSize = .zero
    @State private var rotateState: Double = 0

    var body: some View {
       Card(tapped: tapped)
            .animation(.spring)
            .offset(y: dragState.height)
            .rotationEffect(Angle(degrees: rotateState))
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        rotateState = value.degrees
                    }
            )
            .gesture(
                DragGesture()
                    .onChanged { value in
                        dragState = value.translation
                    }
                    .onEnded { value in
                        dragState = .zero
                    }
            )
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

// Use DragGesture to move the Y position and assigning it to a @State property.
// Implementing onEnded to restart the position of the card
// Animate gesture using spring animation

// Implementing MagnificationGesture and use scaleEffect

// Implement RotationGesture
// Use rotationEffect to perform rotation changes based on the degrees

#Preview {
    ContentView()
}
