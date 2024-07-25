//
//  ContentView.swift
//  IntroNeumorphicDesign
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NeumorphicImageButton(
                systemName: "heart.fill",
                onTap: { }
            )
            .padding()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white.opacity(0.3))
    }
}

// Create NeumorphicImageButton
// Add Tap Gesture to NeumorphicImage
// Improve animation by changing the scale and shadown

#Preview {
    ContentView()
}
