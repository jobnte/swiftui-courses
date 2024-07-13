//
//  ContentView.swift
//  WeSplit
//
//  Created by Jorge Bustamante on 12/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world: \(name)")
        }
    }
}

#Preview {
    ContentView()
}
