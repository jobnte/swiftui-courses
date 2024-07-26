//
//  ContentView.swift
//  MaterialBackground
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: "https://www.giantfreakinrobot.com/wp-content/uploads/2020/10/deadpool-3-feature.jpg")!)

            HStack {
                Text("Movie")
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .background(
                .ultraThinMaterial,
                in: RoundedRectangle(cornerRadius: 20)
            )
        }
        .padding()
    }
}

// Use of background .regularMaterial, .thinMaterial

#Preview {
    ContentView()
}
