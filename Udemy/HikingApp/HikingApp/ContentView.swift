//
//  ContentView.swift
//  HikingApp
//
//  Created by Jorge Bustamante on 17/07/24.
//

import SwiftUI

struct ContentView: View {

    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5),
    ]

    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {

    let hike: Hike

    var body: some View {
        HStack(alignment: .center) {
            Image(hike.photo)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
