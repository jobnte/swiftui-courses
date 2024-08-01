//
//  LargeBlueTitle.swift
//  GuessTheFlag
//
//  Created by Jorge Bustamante on 1/08/24.
//

import SwiftUI

struct LargeBlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 34, weight: .bold, design: .default))
            .foregroundStyle(.blue)
    }
}

extension View {
    func largeBlueTitle() -> some View {
        self.modifier(LargeBlueTitle())
    }
}
