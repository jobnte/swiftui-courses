//
//  ContentView.swift
//  HelloMVVM
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isRedacted: Bool = true
    var body: some View {
        VStack {
            Toggle(isOn: $isRedacted, label: {
                Text("Redacted")
            })
            Spacer()
            Text("Jorge Bustamante")
            HStack {
                Text("SSN")
                Text("456-6128-1123")
                    .redacted(reason: isRedacted ? .placeholder : .init())
            }
        }
        .padding()
    }
}

// Use of redacted view modifier

#Preview {
    ContentView()
}
