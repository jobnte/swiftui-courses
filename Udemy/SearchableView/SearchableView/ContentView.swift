//
//  ContentView.swift
//  SearchableView
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct CustomerListView: View {

    let customers: [String]

    var body: some View {
        List(customers, id: \.self) { customer in
            Text(customer)
        }
    }
}

struct ContentView: View {
    let names = ["Ales", "Peres", "Carlos", "Juanito", "Pepito"]
    @State private var text: String = ""
    var body: some View {
        NavigationStack {
            CustomerListView(customers: names)
        }
        .searchable(text: $text) {
            ForEach(names.filter { $0.hasPrefix(text)}, id: \.self) { name in
                Text(name)
            }
        }
        .onSubmit(of: .search) {
            // perform a search
        }
    }
}

// Use of new api .searchable and .onSubmit(of: .search)


#Preview {
    ContentView()
}
