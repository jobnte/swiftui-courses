//
//  ContentView.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("tapCount") private var tapCount = 0

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }

}

// Use of @Observable
// Use of dismiss environment variable

// Use of @AppStorage


#Preview {
    ContentView()
}
