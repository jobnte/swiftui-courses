//
//  ContentView.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

let numberFormatter = NumberFormatter()

struct ContentView: View {

    @State private var expenses = Expenses()
    @State private var showingAddExpense = false

    init() {
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        .foregroundStyle(item.amount < 100 ? .green : .red)

                        Spacer()
                        Text(numberFormatter.string(from: NSNumber(value: item.amount))!)
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense = true
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }

    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

// Use of @Observable
// Use of dismiss environment variable

// Use of @AppStorage
// Use of formatter to format strings
// Different text styles based on a condition
// Presented a view using .sheet


#Preview {
    ContentView()
}
