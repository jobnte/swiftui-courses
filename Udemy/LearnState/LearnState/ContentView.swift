//
//  ContentView.swift
//  LearnState
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON" : "OFF")
            }).fixedSize()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(isOn ? .yellow : .black)
    }
}

// Using @State property wrapper
// Use of toggle and fixedSize viewModifier
// When STATE changed the SwiftUI view gets re-evaluate
// Use different conditions to make changes in the view



#Preview {
    ContentView()
}
