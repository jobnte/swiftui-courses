//
//  ContentView.swift
//  LearnSwiftUI2
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            DatePicker("Select date:", selection: $selectedDate)
        }
    }
}

#Preview {
    ContentView()
}
