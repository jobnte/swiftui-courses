//
//  ContentView.swift
//  LearnBinding
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

struct LightBulbView: View {

    @Binding var isOn: Bool

    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)

            Button("Toggle") {
                isOn.toggle()
            }
        }
    }
}

struct ContentView: View {

    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            LightBulbView(isOn: $isOn)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .black : .white)
    }
}

#Preview {
    ContentView()
}
