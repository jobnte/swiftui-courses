//
//  ContentView.swift
//  SwiftUIDefaultBasicAnimation
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var showDetails: Bool = false

    var body: some View {
        VStack {

//            NotificationView()
//                .offset(
//                    y: self.showDetails ? -UIScreen.main.bounds.height / 3 : -UIScreen.main.bounds.height
//                )
//                .animation(
//                    .interpolatingSpring(
//                        mass: 1, stiffness: 100, damping: 10, initialVelocity: 0
//                    )
//                )

            Spacer()

            Text("🐱")
                .font(.custom("Arial", size: 100))
                .scaleEffect(showDetails ? 2 : 1)
                .rotationEffect(.degrees(showDetails ? 360 : 0))
                .animation(
                    .interpolatingSpring(
                        mass: 1, stiffness: 100, damping: 10, initialVelocity: 0
                    )
                )

            Spacer()

            Button("Press me") {
                self.showDetails.toggle()
            }
            .padding()
            .background(.green)
            .foregroundColor(.white)

            HStack {
//                Text(showDetails ? "Hide details" : "Show details")
//                Image(systemName: "chevron.up.square" )
//                    .rotationEffect(.degrees(showDetails ? 0 : 180))
//                    .animation(.default)

//                Text("🛬")
//                    .font(.custom("Arial", size: 100))
//                    .offset(x: showDetails ? UIScreen.main.bounds.width - 120 : 0)
//                    .animation(
//                        .interpolatingSpring(
//                            mass: 5.0,
//                            stiffness: 100.0,
//                            damping: 10,
//                            initialVelocity: 1
//                        )
//                    )

                

                Spacer()

            }
        }
        .padding()
    }
}

// Use .animation default to rotate images.
// Use .easeIn/.easeOut animation
// Use .spring animation
// Use .interpolatingSpring animation
// Implement basic notificationView using spring animation
// Combination animations

#Preview {
    ContentView()
}
