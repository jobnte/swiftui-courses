//
//  ContentView.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI
import MapKit

enum DisplayType {
    case map
    case list
}

struct ContentView: View {

    @StateObject private var placeListVM = PlaceListViewModel()
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var searchTerm: String = ""
    @State private var displayType: DisplayType = .map

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
                    placeListVM.searchLandmarks(searchTerm: searchTerm)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())

            LandmarkCategoryView { (category) in
                placeListVM.searchLandmarks(searchTerm: category)
            }

            Picker("Select", selection: $displayType) {
                Text("Map").tag(DisplayType.map)
                Text("List").tag(DisplayType.list)
            }
            .pickerStyle(SegmentedPickerStyle())

            if displayType == .map {
                Map(coordinateRegion: getRegion(), interactionModes: .all, showsUserLocation: true, userTrackingMode: $userTrackingMode, annotationItems: placeListVM.landmarks) { landmark in
                    MapMarker(coordinate: landmark.coordinate)
                }
            } else if displayType == .list {
                LandmarkListView(landmarks: placeListVM.landmarks)
            }

        }.padding()
    }
}

#Preview {
    ContentView()
}
