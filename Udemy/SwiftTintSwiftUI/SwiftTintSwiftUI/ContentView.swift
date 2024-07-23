//
//  ContentView.swift
//  SwiftTintSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var settingsVM = SettingsViewModel()
    
    var body: some View {
        VStack(alignment: .center) {
            
            Toggle(isOn: self.$settingsVM.isOn) {
                Text("")
            }.fixedSize()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(self.$settingsVM.isOn.wrappedValue ? Color.green : Color.red)
    }
}

#Preview {
    ContentView()
}
