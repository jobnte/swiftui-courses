//
//  ContentView.swift
//  LearnTimelineView
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           TimelineView(
            PeriodicTimelineSchedule(
                from: Date(),
                by: 1
            )
           ) { context in
               Text("\(context.date)")
           }
        }
        .padding()
    }
}

// Using TimelineView with PeriodicTimelineSchedule

#Preview {
    ContentView()
}
