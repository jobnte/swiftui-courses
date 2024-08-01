//
//  ContentView.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI
import SwiftData

let numberFormatter = NumberFormatter()

struct ContentView: View {

    @Environment(\.modelContext) var modelContext
    @State private var showingAddExpense = false

    @Query var allItems: [ExpenseItem]

    @Query<ExpenseItem>(filter: #Predicate { $0.type == "Personal"}, animation: .default)
    var personalItems: [ExpenseItem]

    @Query<ExpenseItem>(filter: #Predicate { $0.type == "Business"}, animation: .default)
    var businessItems: [ExpenseItem]

    @State private var currentFilter = 0

    var items: [ExpenseItem] {
        switch currentFilter {
        case 1:
            return personalItems
        case 2:
            return businessItems
        default:
            return allItems
        }
    }


    @State private var sortOrder = [
        SortDescriptor(\ExpenseItem.name),
        SortDescriptor(\ExpenseItem.amount),
    ]

    init() {
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
    }

    var body: some View {
        NavigationStack {
            List {
                Section("") {
                    ForEach(items) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            .foregroundStyle(item.amount < 100 ? .green : .red)

                            Spacer()

                            Text("\(item.amount)")
                            Text(numberFormatter.string(from: NSNumber(value: item.amount))!)
                        }
                    }
                    .onDelete(perform: removeItems)
                }
            }
            .onChange(of: sortOrder, { oldValue, newValue in
            })
            .navigationTitle("iExpense")
            .toolbar {
                NavigationLink(destination: AddView()) {
                    Text("Add Expenses")
                }

                Menu("Filter", systemImage: "arrow.up.arrow.down") {
                    Picker("Filter", selection: $currentFilter) {
                        Text("Filter by All")
                            .tag(0)

                        Text("Filter by Personal")
                            .tag(1)

                        Text("Filter by Business")
                            .tag(2)
                    }
                }

                Menu("Sort", systemImage: "arrow.up.arrow.down") {
                    Picker("Sort", selection: $sortOrder) {
                        Text("Sort by Name")
                            .tag([
                                SortDescriptor(\ExpenseItem.name),
                                SortDescriptor(\ExpenseItem.amount),
                            ])

                        Text("Sort by Amount")
                            .tag([
                                SortDescriptor(\ExpenseItem.amount),
                                SortDescriptor(\ExpenseItem.name),
                            ])
                    }
                }
            }

        }
    }

    func removeItems(at offsets: IndexSet) {
        for index in offsets {
            let item = items[index]
            modelContext.delete(item)
        }

        do {
            try modelContext.save()
        } catch {
            // Handle the Core Data error
            print("Failed to delete items: \(error.localizedDescription)")
        }
    }
}

// Use of @Observable
// Use of dismiss environment variable

// Use of @AppStorage
// Use of formatter to format strings
// Different text styles based on a condition
// Presented a view using .sheet


#Preview {
    NavigationStack {
        ContentView()
            .modelContainer(for: ExpenseItem.self)
    }
}
