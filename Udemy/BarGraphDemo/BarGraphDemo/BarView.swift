//
//  BarView.swift
//  BarGraphDemo
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct BarView: View {

    let report: Report
    @State private var showGraph: Bool = false

    var body: some View {
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)

        VStack {
            Text(String(format: "%0.2f", report.revenue))
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: showGraph ? CGFloat(yValue) : 0)
                .onAppear {
                    withAnimation(.spring) {
                        showGraph = true
                    }
                }

            Text(report.year)
        }
    }
}

#Preview {
    BarView(report: Report.all()[0])
}
