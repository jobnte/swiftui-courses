//
//  SecondView.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss

    let name: String

    var body: some View {
        VStack {
            Text("Hello, \(name)!")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    SecondView(name: "Hello")
}
