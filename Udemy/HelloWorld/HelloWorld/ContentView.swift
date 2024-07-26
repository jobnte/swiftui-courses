//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var stockName = "ENE"
    @State private var stockPrice: Double?

    private func updateStockPrice() {
        stockPrice = Double.random(in: 0...1.0)
    }

    var body: some View {
        VStack {
            Text(stockName)
                .font(.largeTitle)
                .padding()

            Text(stockPrice != nil ? "$\(stockPrice!)" : "")
        }
        .padding()
        .onAppear {
            updateStockPrice()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
            updateStockPrice()
        })
    }
}

// Use of onReceive to listen notifications from the system

#Preview {
    ContentView()
}
