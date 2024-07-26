//
//  ContentView.swift
//  TextFormatting
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    let people = ["Alice", "Bob", "Charlie", "Diana"]
    let now = Date()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Formatted Text in SwiftUI")
                    .font(.title)
                    .padding(.bottom, 20)

                Text("MeasurementFormatter:")
                Text(measurementString())
                    .padding(.bottom, 10)

                Text("DateFormatter:")
                Text(dateString())
                    .padding(.bottom, 10)

                Text("NumberFormatter (Currency):")
                Text(currencyString())
                    .padding(.bottom, 10)

                Text("NumberFormatter (Percentage):")
                Text(percentageString())
                    .padding(.bottom, 10)

                Text("ISO8601DateFormatter:")
                Text(iso8601DateString())
                    .padding(.bottom, 10)

                Text("DateComponentsFormatter:")
                Text(dateComponentsString())
                    .padding(.bottom, 10)

                Text("List Formatting:")
                Text(people, format: .list(type: .and))
                    .padding(.bottom, 10)

                Text("Date Formatting Variants:")
                Text("Date omitted: \(now.formatted(date: .omitted, time: .standard))")
                Text("Date complete: \(now.formatted(date: .complete, time: .omitted))")
                Text("Date numeric: \(now.formatted(date: .numeric, time: .omitted))")
                Text("Date abbreviated: \(now.formatted(date: .abbreviated, time: .omitted))")
                    .padding(.bottom, 10)

                Text("Date.FormatStyle Variants:")
                Text(now, format: Date.FormatStyle().day())
                Text(now, format: Date.FormatStyle().day().month().year())
                Text(now, format: Date.FormatStyle().hour().minute())
                Text(now, format: Date.FormatStyle().weekday().month().day().year())
                    .padding(.bottom, 10)
            }
            .padding()
        }
    }


    func measurementString() -> String {
        let measurement = Measurement(value: 25, unit: UnitLength.miles)
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .long
        return formatter.string(from: measurement)
    }

    func dateString() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }

    func currencyString() -> String {
        let number = NSNumber(value: 1234.56)
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: number) ?? ""
    }

    func percentageString() -> String {
        let number = NSNumber(value: 0.85)
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        return formatter.string(from: number) ?? ""
    }

    func iso8601DateString() -> String {
        let date = Date()
        let formatter = ISO8601DateFormatter()
        return formatter.string(from: date)
    }

    func dateComponentsString() -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        let components = DateComponents(day: 1, hour: 2, minute: 30)
        return formatter.string(from: components) ?? ""
    }
}

#Preview {
    ContentView()
}
