//
//  LandmarkViewModel.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation
import MapKit

struct LandmarkViewModel: Identifiable {

    let placemark: MKPlacemark

    let id = UUID()

    var name: String {
        placemark.name ?? ""
    }

    var title: String {
        placemark.title ?? ""
    }

    var coordinate: CLLocationCoordinate2D {
        placemark.coordinate
    }
}
