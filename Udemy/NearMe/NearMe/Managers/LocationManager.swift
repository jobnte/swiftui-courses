//
//  LocationManager.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation
import MapKit

class LocationManager: NSObject, ObservableObject {

    private let locationManager = CLLocationManager()
    @Published var location: CLLocation? = nil

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }

        DispatchQueue.main.async {
            self.location = location
        }
    }
}
