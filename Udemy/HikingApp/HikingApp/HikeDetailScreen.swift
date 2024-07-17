//
//  HikeDetailScreen.swift
//  HikingApp
//
//  Created by Jorge Bustamante on 17/07/24.
//

import SwiftUI

struct HikeDetailScreen: View {

    let hike: Hike
    @State private var zoomed: Bool = false

    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
                .font(.caption)
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}



#Preview {
    NavigationStack {
        HikeDetailScreen(
            hike: .init(
                name: "Hiking in a mountain",
                photo: "sal",
                miles: 1
            )
        )
    }
}
