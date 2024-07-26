//
//  GraphView.swift
//  JustWalkingHK
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct GraphView: View {

    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter

    }()

    let steps: [Step]

    var totalSteps: Int {
        steps.map { $0.count }.reduce(0,+)
    }

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                ForEach(steps, id: \.id) { step in

                    let yValue = Swift.min(step.count/20, 300)

                    VStack {
                        Text("\(step.count)")
                            .font(.caption)
                            .foregroundColor(Color.white)
                        Rectangle()
                            .fill(step.count > 10000 ? Color.green :Color.red)
                            .frame(width: 20, height: CGFloat(yValue))
                        Text("\(step.date,formatter: Self.dateFormatter)")
                            .font(.caption)
                            .foregroundColor(Color.white)
                    }
                }

            }

            Text("Total Steps: \(totalSteps)").padding(.top, 100)
                .foregroundColor(Color.white)
                .opacity(0.5)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.9))
        .cornerRadius(10)
        .padding(10)
    }
}


#Preview {
    let steps = [
        Step(count: 3452, date: Date()),
        Step(count: 123, date: Date()),
        Step(count: 1223, date: Date()),
        Step(count: 5223, date: Date()),
        Step(count: 12023, date: Date())
    ]
    return GraphView(steps: steps)
}