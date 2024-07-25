//
//  ContentView.swift
//  Map
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import MapKit

struct ContentView: View {

    @State private var region = MKCoordinateRegion(
        center: .init(latitude: 29.73560, longitude: -95.393690),
        latitudinalMeters: 500,
        longitudinalMeters: 500
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    ContentView()
}
