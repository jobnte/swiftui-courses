//
//  ContentView.swift
//  NearMeApp
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject private var locationManager = LocationManager()

    var body: some View {
        MapView()
    }
}

#Preview {
    ContentView()
}

// Create MapView using UIViewRepresentable
// Create Coordinator class to handle events of MapView
// Zoom to user location using MKUserLocation
