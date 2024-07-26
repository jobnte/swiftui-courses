//
//  ContentView.swift
//  StocksApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = StockListViewModel()

    var body: some View {
        List(viewModel.stocks, id: \.name) { stock in
            HStack {
                Text(stock.name)
                Spacer()
                Text(stock.price.formatted(.currency(code: "USD")))
            }
        }
        .task {
            await viewModel.getAllStocks()
        }
    }
}

#Preview {
    ContentView()
}
