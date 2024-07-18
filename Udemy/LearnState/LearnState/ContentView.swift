//
//  ContentView.swift
//  LearnState
//
//  Created by Jorge Bustamante on 18/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var search: String = ""
    @State private var friends: [String] = ["John", "Mary", "Jorge", "Steven", "Jerry"]
    @State private var filteredFriends: [String] = []

    var body: some View {
        VStack {
            List(filteredFriends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) { oldValue, newValue in
                if newValue.isEmpty {
                    filteredFriends = friends
                } else {
                    filteredFriends = friends.filter { $0.contains(search) }
                }
            }

            Spacer()
        }
        .padding()
        .onAppear {
            filteredFriends = friends
        }
        .navigationTitle("Friends")
    }
}

// Using @State property wrapper
// Use of toggle and fixedSize viewModifier
// When STATE changed the SwiftUI view gets re-evaluate
// Use different conditions to make changes in the view
// Use of state property for TextField

// Use of Searchable view modifier -- requirement, needs a navigationStack
// Use onChange



#Preview {
    NavigationStack {
        ContentView()
    }
}
