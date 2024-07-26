//
//  ContentView.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject private var placeListVM = PlaceListViewModel()
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var searchTerm: String = ""

    private func getRegion() -> Binding<MKCoordinateRegion> {

        guard let coordinate = placeListVM.currentLocation else {
            return .constant(MKCoordinateRegion.defaultRegion)
        }

        return .constant(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))
    }

    var body: some View {
        VStack {
            TextField(
                "Search",
                text: $searchTerm,
                onEditingChanged: { _ in },
                onCommit: {
                    // get all landmarks
                placeListVM.searchLandmarks(searchTerm: searchTerm)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())

            Map(
                coordinateRegion: getRegion(),
                interactionModes: .all,
                showsUserLocation: true,
                userTrackingMode: $userTrackingMode,
                annotationItems: placeListVM.landmarks
            ) { landmark in
                MapMarker(coordinate: landmark.coordinate)
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
