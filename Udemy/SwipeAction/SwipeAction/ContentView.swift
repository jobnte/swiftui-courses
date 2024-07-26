//
//  ContentView.swift
//  SwipeAction
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1...20, id: \.self) { index in
                Text("\(index)")
                    .swipeActions(edge: .leading) {
                        Button(action: {}, label: {
                            if index % 2 == 0 {
                                Label("Read", systemImage: "envelope.open")
                            } else {
                                Label("Unread", systemImage: "envelope.badge")
                            }
                        })
                    }
                    .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {

                        } label: {
                            Label("Delete", systemImage: "trash")
                        }

                    }
            }
        }
    }
}

// Use of .swipeActions to add actions in a list.

#Preview {
    ContentView()
}
