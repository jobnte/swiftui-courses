//
//  ContentView.swift
//  HotProspects
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProspectsView(filter: .none)
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }
            ProspectsView(filter: .contacted)
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            ProspectsView(filter: .uncontacted)
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
            MeView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.square")
                }
        }
    }
}

// Use of TabView
// Use of Result type
// Use of .interpolation modifier for Images
// Use of contextMenu for additional actions on a View
// Add swipe actions
// Use swiftData to store data
// Creating QR code using CIFilter.qrCodeGenerator
// Read QR

#Preview {
    ContentView()
}
