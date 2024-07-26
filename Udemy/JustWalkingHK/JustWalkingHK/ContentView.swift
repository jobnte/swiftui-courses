//
//  ContentView.swift
//  JustWalkingHK
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI
import HealthKit

struct ContentView: View {

    private var healthStore: HealthStore?
    @State private var steps: [Step] = [Step]()

    init() {
        healthStore = HealthStore()
    }

    private func updateUIFromStatistics(_ statisticsCollection: HKStatisticsCollection) {

        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let endDate = Date()

        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) { (statistics, stop) in

            let count = statistics.sumQuantity()?.doubleValue(for: .count())

            let step = Step(count: Int(count ?? 0), date: statistics.startDate)
            steps.append(step)
        }

    }

    var body: some View {

        NavigationView {
            GraphView(steps: steps)
                .navigationTitle("Just Walking")
        }
        .onAppear {
            if let healthStore = healthStore {
                healthStore.requestAuthorization { success in
                    if success {
                        healthStore.calculateSteps { statisticsCollection in
                            if let statisticsCollection = statisticsCollection {
                                updateUIFromStatistics(statisticsCollection)
                            }
                        }
                    }
                }
            }
        }
    }
}

// Use of HKHealthStore
// Query data from HKStatisticsCollectionQuery to read steps from the past days
// Configure project to use HealthKit
// Recap of BarChart

#Preview {
    ContentView()
}