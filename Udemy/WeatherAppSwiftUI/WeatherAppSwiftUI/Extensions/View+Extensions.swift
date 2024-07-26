//
//  View+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

extension View {

    func embedInNavigationView() -> some View {
        return NavigationView { self }
    }
}
