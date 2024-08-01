//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    let resorts: [Resort] = Bundle.main.decode("resorts.json")

    @State private var favorites = Favorites()
    @State private var allResorts = Resorts()
    @State private var searchText = ""
    @State private var showingFilterPage = false

    var filteredResorts: [Resort] {
        if searchText.isEmpty {
            resorts
        } else {
            resorts.filter { $0.name.localizedStandardContains(searchText) }
        }
    }

    var body: some View {
        NavigationSplitView {
            List(allResorts.resorts) { resort in
                NavigationLink(value: resort) {
                    HStack {
                        Image(resort.country)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 25)
                            .clipShape(
                                .rect(cornerRadius: 5)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                            )

                        VStack(alignment: .leading) {
                            Text(resort.name)
                                .font(.headline)
                            Text("\(resort.runs) runs")
                                .foregroundStyle(.secondary)
                        }

                        if favorites.contains(resort) {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .accessibilityLabel("This is a favorite resort")
                                .foregroundStyle(.red)
                        }
                    }
                }
            }
            .navigationTitle("Resorts")
            .navigationDestination(for: Resort.self) { resort in
                ResortView(resort: resort)
            }
            .navigationBarItems(trailing: Button(action: {
                self.showingFilterPage = true
                allResorts.resetFilters()
            }, label: {
                Text("Sort & Filter")
            }))
            .sheet(isPresented: $showingFilterPage, content: {
                SortingView()
            })

            .searchable(text: $searchText, prompt: "Search for a resort")
        } detail: {
            WelcomeView()
        }
        .environment(allResorts)
        .environment(favorites)
    }
}

// Two side views content, using NavigationSplitView
// Using .alert and .sheet
// Use Groups as a containers
// Add searchable view modifier
// Decode data from local json
// Presenting default view for splitted view
// Implement Environment variable dynamicTypeSize

#Preview {
    ContentView()
}
