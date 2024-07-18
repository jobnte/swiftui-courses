//
//  Array+Ext.swift
//  GridSwiftUI
//
//  Created by Jorge Bustamante on 18/07/24.
//

import Foundation

extension Array {

    func chunks(size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
