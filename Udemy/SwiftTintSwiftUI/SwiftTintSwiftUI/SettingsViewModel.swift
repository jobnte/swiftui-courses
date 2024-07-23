//
//  SettingsViewModel.swift
//  SwiftTintSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

class SettingsViewModel: ObservableObject {

    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOn") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
    }

}
