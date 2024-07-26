//
//  ContentView.swift
//  SwiftUIRatings
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

extension Image {

    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}

struct ContentView: View {

    @State private var rating: Int?

    var body: some View {
        VStack {
            Image("coffee")
                .resizedToFill(width: /*@START_MENU_TOKEN@*/150/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150/*@END_MENU_TOKEN@*/)

            RatingView(rating: $rating).padding()

            Text(rating != nil ? "You rating: \(rating!)" : "")
        }
    }
}

// Use LibraryContentProvider for Custom Views
// Use of Modifiers in Extensions


#Preview {
    ContentView()
}
