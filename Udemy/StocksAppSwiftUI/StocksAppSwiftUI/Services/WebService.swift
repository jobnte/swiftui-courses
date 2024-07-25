//
//  WebService.swift
//  StocksAppSwiftUI
//
//  Created by Jorge Bustamante on 25/07/24.
//

import Foundation

class WebService {

    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            fatalError("URL is not correct")
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }

            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)

        }.resume()
    }
}
