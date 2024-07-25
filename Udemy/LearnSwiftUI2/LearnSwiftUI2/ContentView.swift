//
//  ContentView.swift
//  LearnSwiftUI2
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var text = ""

    var body: some View {
        VStack {
            TextEditor(text: $text)
        }
    }
}

#Preview {
    ContentView()
}
