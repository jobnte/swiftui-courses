//
//  ContentView.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1

    var body: some View {
        VStack {
            ForEach(numbers, id: \.self) {
                Text("Row \($0)")
            }
            .onDelete(perform: removeRows)

            Button("Add Number") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }
        .toolbar {
            EditButton()
        }
    }

    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }

}

// Use of @Observable
// Use of dismiss environment variable


#Preview {
    ContentView()
}
