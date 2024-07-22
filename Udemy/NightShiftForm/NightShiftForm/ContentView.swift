//
//  ContentView.swift
//  NightShiftForm
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow = false
    @State private var colorTemperature: CGFloat = 0.5

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("Schedule", isOn: $scheduled)

                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }

                        Spacer()

                        NavigationLink(
                            destination: Text("Scheduled Settings")) {
                                VStack {
                                    Text("Sunset").foregroundStyle(.blue)
                                    Text("Sunrise").foregroundStyle(.blue)
                                }
                            }
                            .fixedSize()
                    }
                } header: {
                    Text("Night Shift automatically")
                }

                Section {
                        Toggle("Manually Enable it till tomorrow", isOn: $manuallyEnabledTillTomorrow)
                }

                Section {

                    HStack {
                        Text("Less warm")
                        Slider(value: $colorTemperature)
                        Text("More warm")

                    }
                } header: {
                    Text("Color temperature")
                }
            }
        }
    }
}

// Use forms to show toggles, navigationLinks and sliders.

#Preview {
    ContentView()
}
