//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: proxy.frame(in: .global).minY/1110, saturation: proxy.size.height/40, brightness: proxy.size.height/30))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .opacity(proxy.frame(in: .global).midY < 200 ? 0.2 : 1)
                            .scaleEffect(proxy.frame(in: .global).midY < 200 ? 0.75 : 1)
                            .scaleEffect(proxy.frame(in: .global).minY < 600 ? 1 : 1.25)
                    }
                    .animation(.easeIn)
                    .frame(height: 40)
                }
            }
        }
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
