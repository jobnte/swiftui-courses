//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var viewModel = StockListViewModel()

    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black

        viewModel.load()
    }

    var body: some View {

        let filteredStocks = self.viewModel.searchTerm.isEmpty ? self.viewModel.stocks : self.viewModel.stocks.filter { $0.symbol.starts(with: self.viewModel.searchTerm ) }

        NavigationStack {
            ZStack(alignment: .leading) {
                Color.black

                Text("January 5 2020")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -350)

                SearchView(searchTerm: self.$viewModel.searchTerm)
                    .offset(y: -300)

                StockListView(stocks: filteredStocks)
                    .offset(y: 200)

                NewsArticleView(newsArticles: self.viewModel.news, onDragBegin: { value in
                    self.viewModel.dragOffset = value.translation
                }, onDragEnd: { value in

                    if value.translation.height < 0 {
                        self.viewModel.dragOffset = CGSize(width: 0, height: 100)
                    } else {
                        self.viewModel.dragOffset = CGSize(width: 0, height: 650)
                    }

                })
                .animation(.spring)
                .offset(y: self.viewModel.dragOffset.height)

            }
            .navigationBarTitle("Stocks")
        }
        .edgesIgnoringSafeArea(Edge.Set(.bottom))
    }
}

// Implementing API of stocks
// Using offset to change position of the views
// Changing appearance using UIKit methods
// Filtering data

// Implementing news api
// Use dragBegin / dragOffset to handle drag gestures
// Use animation spring

#Preview {
    ContentView()
}
