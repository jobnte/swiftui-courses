//
//  String+Extension.swift
//  MovieSearchAPI
//
//  Created by Jorge Bustamante on 26/07/24.
//

import Foundation

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
