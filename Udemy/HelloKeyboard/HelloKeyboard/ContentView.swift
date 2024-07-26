//
//  ContentView.swift
//  HelloKeyboard
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var age: String = ""

    var body: some View {
        VStack {
            Spacer()
            TextField("name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("age", text: $age)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

// Applying style to textfield to avoid covering views

#Preview {
    ContentView()
}
