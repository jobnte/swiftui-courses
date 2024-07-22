//
//  Card.swift
//  GesturesDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct Card: View {
    let tapped: Bool

    var body: some View {
        VStack {
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
