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

    @State private var search: String = ""
    @State private var landmarks = [Landmark]()

    private func getNearByLandmarks() {

        guard let location = self.locationManager.location else {
            return
        }

        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)

        let search = MKLocalSearch(request: request)
        search.start { (response, error) in

            guard let response = response, error == nil else {
                return
            }

            let mapItems = response.mapItems
            self.landmarks = mapItems.map {
                Landmark(placemark: $0.placemark)
            }

        }

    }

    var body: some View {
        ZStack(alignment: .top) {
            MapView(landmarks: self.landmarks)

            TextField("Search", text: self.$search, onEditingChanged: { _ in }) {
                self.getNearByLandmarks()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .offset(y: 44)

        }
    }
}

#Preview {
    ContentView()
}

// Create MapView using UIViewRepresentable
// Create Coordinator class to handle events of MapView
// Zoom to user location using MKUserLocation

// Add Search TextField
// Get near by landmarks using MKLocalSearch
// Implement Landmark annotation
