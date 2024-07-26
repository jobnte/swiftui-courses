//
//  CustomerListViewModel.swift
//  PullToRefresh
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

final class CustomerListViewModel: ObservableObject {

    @Published var customers: [String] = []

    func fetch() {
        let letters = "abcdefghi"
        var names: [String] = []

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            for _ in 1...20 {
                let randomName = String((0...letters.count).map { _ in letters.randomElement()! })
                names.append(randomName)
            }

            self.customers = names
        }
    }
}
