//
//  MapView.swift
//  NearMeApp
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewRepresentable {

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> MKMapView {

        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) { }
}
