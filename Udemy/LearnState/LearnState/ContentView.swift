//
//  ContentView.swift
//  LearnState
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Button("Increment") {
                count += 1
            }
        }
        .padding()
    }
}

// Using @State property wrapper

#Preview {
    ContentView()
}
