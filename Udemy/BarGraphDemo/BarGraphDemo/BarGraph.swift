//
//  BarGraph.swift
//  BarGraphDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import Foundation
import SwiftUI

struct BarGraph: View {

    let reports: [Report]

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {

                ForEach(reports, id: \.year) { report in
                    BarView(report: report)
                }
            }
        }
    }
}

// align hstack bottom baseline
// iterate array in order to create a barviews
// add default / spring animation to the graph view

#Preview {
    BarGraph(reports: Report.all())
}
