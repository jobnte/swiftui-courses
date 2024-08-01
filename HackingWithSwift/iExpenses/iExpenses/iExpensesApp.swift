//
//  iExpensesApp.swift
//  iExpenses
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI
import SwiftData

@main
struct iExpensesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
