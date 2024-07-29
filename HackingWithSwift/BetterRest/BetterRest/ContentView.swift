//
//  ContentView.swift
//  BetterRest
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now

    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)

            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)

            Text(Date.now.formatted(date: .long, time: .shortened))
        }
        .padding()
    }
}

// Basic usage of Stepper control
// Basic usage of DatePicker and ranges
// Use of formatted to format dates based on the locale/preferences

// Train a ML model using developer tool

#Preview {
    ContentView()
}
