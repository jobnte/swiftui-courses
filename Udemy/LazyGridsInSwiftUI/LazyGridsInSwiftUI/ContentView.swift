//
//  ContentView.swift
//  LazyGridsInSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 0, maximum: 100)),
        GridItem(.fixed(120)),
        GridItem(.fixed(100))
    ]

    private func headerView(_ index: Int) -> some View {
        Text("Section: \(index)")
            .padding()
            .foregroundStyle(.red)
            .font(.title)
            .frame(maxWidth: .infinity)
            .background(.blue)
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    spacing: 10,
                    pinnedViews: [.sectionHeaders],
                    content: {

                        ForEach(1..<11) { index in
                            Section {
                                ForEach(1..<20) { _ in
                                    Rectangle()
                                        .fill(.red)
                                        .aspectRatio(contentMode: .fill)
                                }
                            } header: {
                                headerView(index)
                            }
                        }
                    })
            }
            .navigationTitle("Pinner Views")
        }
    }
}

// Using LazyVGrid
// Using .fixed GridItem
// Scroll in a LazyVGrid by wrapping it in a ScrollView
// Use of sticky headers in grid

#Preview {
    ContentView()
}
