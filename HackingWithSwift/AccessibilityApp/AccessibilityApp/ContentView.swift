//
//  ContentView.swift
//  AccessibilityApp
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("John Fitzgerald Kennedy") {
            print("Button tapped")
        }
        .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
    }
}

// Use of accessibility input labels
// Use of accessibility traits
// Use of accessibility hidden
// Use of accessibility element children to combine child views

#Preview {
    ContentView()
}
