//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Bustamante on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
        }
    }

    func executeDelete() {
        print("Now deleting…")
    }
}

#Preview {
    ContentView()
}
