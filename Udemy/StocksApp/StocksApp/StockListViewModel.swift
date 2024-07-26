//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

@MainActor
final class StockListViewModel: ObservableObject {

    @Published var stocks: [StockViewModel] = []

    func getAllStocks() async {
        let stocks = await StockService().getStocks()
        self.stocks = stocks.map(StockViewModel.init)
    }
}


// Learn about async await
// Learn about withUnsafeContinuation & withCheckedContinuation
// Use of async closure
// Use of MainActor


struct StockViewModel {
    let stock: Stock

    var name: String {
        stock.name
    }

    var price: Double {
        stock.price
    }
}
