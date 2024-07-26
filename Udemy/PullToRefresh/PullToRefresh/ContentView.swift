//
//  ContentView.swift
//  PullToRefresh
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = CustomerListViewModel()

    var body: some View {
        List(viewModel.customers, id: \.self) { customer in
            Text(customer)
        }
        .onAppear {
            viewModel.fetch()
        }
        .refreshable {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
