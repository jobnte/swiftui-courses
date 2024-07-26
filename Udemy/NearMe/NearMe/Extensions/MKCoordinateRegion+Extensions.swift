//
//  MKCoordinateRegion+Extensions.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation
import MapKit

extension MKCoordinateRegion {

    static var defaultRegion: MKCoordinateRegion {
        return MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 29.726819,
                longitude: -95.393692
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
        )
    }
}
