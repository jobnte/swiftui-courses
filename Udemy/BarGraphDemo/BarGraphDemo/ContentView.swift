//
//  ContentView.swift
//  BarGraphDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

#Preview {
    ContentView()
}
