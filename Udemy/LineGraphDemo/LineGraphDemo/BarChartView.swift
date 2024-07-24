//
//  BarChartView.swift
//  LineGraphDemo
//
//  Created by Jorge Bustamante on 24/07/24.
//

import SwiftUI

struct BarChartView: View {

    let values: [Int]
    let labels: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                ForEach(values.indices, id: \.self) { index in

                    let label = labels[index]
                    let value = values[index]

                    VStack {
                        Text("\(value)")
                        Rectangle()
                            .fill(value <= 120 ? Color.red:  Color.blue)
                            .frame(width: 44, height: CGFloat(value))
                        Text(label)
                    }.padding([.leading, .trailing], 8)

                }

            }
        }

    }
}

// Implement BarChartView using Rectangle and HStack

#Preview {
    BarChartView(values: [], labels: [])
}
