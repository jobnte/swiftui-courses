//
//  StockService.swift
//  StocksApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

struct Stock {
    let name: String
    let price: Double
}

class StockService {

    func getStocks(completion: @escaping ([Stock]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let stocks = [
                Stock(name: "APPLE", price: Double.random(in: 100...200)),
                Stock(name: "GOOGLE", price: Double.random(in: 1000...2000)),
                Stock(name: "MICROSOFT", price: Double.random(in: 300...500)),
            ]

            completion(stocks)
        }
    }

    func getStocks() async -> [Stock] {
        await withUnsafeContinuation { continuation in
            getStocks { stocks in
                continuation.resume(returning: stocks)
            }
        }
    }
}
