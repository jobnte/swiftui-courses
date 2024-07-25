//
//  ContentView.swift
//  LearnSwiftUI2
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var color: Color = .purple

    var body: some View {
        ColorPicker("Select a color", selection: $color)
    }
}

#Preview {
    ContentView()
}
