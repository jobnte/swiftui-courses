//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Bustamante on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }

    func executeDelete() {
        print("Now deleting…")
    }
}

#Preview {
    ContentView()
}
