//
//  APIEndpoint.swift
//  Weatherly
//
//  Created by Jorge Bustamante on 19/07/24.
//

import Foundation

enum APIEndpoint {

    static let baseURL = "https://api.openweathermap.org"

    case coordinateByLocation(String)
    case weatherByLatLon(Double, Double)

    private var path: String {
        switch self {
        case .coordinateByLocation(let city):
            return "/geo/1.0/direct?q=\(city)&appid=\(Constants.Keys.weatherAPIKey)"
        case .weatherByLatLon(let lat, let lon):
            return "/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherAPIKey)&unit=metrics"
        }
    }

    static func endpointURL(for endpoint: APIEndpoint) -> URL {
        let endpointPath = endpoint.path
        return URL(string: baseURL + endpointPath)!
    }
}
