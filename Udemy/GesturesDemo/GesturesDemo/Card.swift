//
//  Card.swift
//  GesturesDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct Card: View {
    let tapped: Bool
    @State private var scale: CGFloat = 1

    var body: some View {
        VStack {

            Image("orangeCat")
                .resizable()
                .scaleEffect(scale)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            scale = value.magnitude
                        }
                )

            Text("Card")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(tapped ? .orange : .pink)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    Card(tapped: false)
}

// Implementing MagnificationGesture and use scaleEffect
