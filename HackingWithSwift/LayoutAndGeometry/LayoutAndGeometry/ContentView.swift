//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { num in
                    Text("Number \(num)")
                        .font(.largeTitle)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                        }

                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

// Use frame to define custom width and height
// Use alignment in a frame view modifier
// Create custom alignment guide
// Positioning views using position (x,y)
// Use offset to move view
// Use GeometryReader to get the value of the screen/container
// Use of scrollTargetBehavior(.viewAligned)

#Preview {
    ContentView()
}
