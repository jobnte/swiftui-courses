//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

class StockListViewModel: ObservableObject {

    @Published var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()

    func load() {
        fetchStocks()
    }

    private func fetchStocks() {
        WebService().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }

    }

}
