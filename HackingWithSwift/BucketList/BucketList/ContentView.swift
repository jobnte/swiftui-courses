//
//  ContentView.swift
//  BucketList
//
//  Created by Jorge Bustamante on 30/07/24.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var isStandard = true
    @State private var viewModel = ViewModel()

    let startPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 56, longitude: -3),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )
    )

    var body: some View {
        if !viewModel.isUnlocked {
            ZStack(alignment: .top) {
                MapReader { proxy in
                    Map(initialPosition: startPosition) {
                        ForEach(viewModel.locations) { location in
                            Annotation(location.name, coordinate: location.coordinate) {
                                Image(systemName: "star.circle")
                                    .resizable()
                                    .foregroundStyle(.red)
                                    .frame(width: 44, height: 44)
                                    .background(.white)
                                    .clipShape(.circle)
                                    .onLongPressGesture {
                                        viewModel.selectedPlace = location
                                    }
                            }
                        }
                    }
                    .mapStyle(isStandard ? .standard : .hybrid)
                    .onTapGesture { position in
                        if let coordinate = proxy.convert(position, from: .local) {
                            viewModel.addLocation(at: coordinate)
                        }
                    }
                    .sheet(item: $viewModel.selectedPlace) { place in
                        EditView(location: place) {
                            viewModel.update(location: $0)
                        }
                    }
                }

                Button(action: {
                    isStandard.toggle()
                }, label: {
                    Text("Hybrid/Standard")
                })
            }
        } else {
            Button("Unlock Places", action: viewModel.authenticate)
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(.capsule)
        }
    }
}

// Writing data into documents directory
// Switching view states with enums (loading, success, failed)
// Integrating MapKit
// Unlock app using TouchID/FaceID
// Use of OnLongPress
// Introducing basic mvvm pattern

#Preview {
    ContentView()
}
