//
//  ContentView.swift
//  SectionsInCombine
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct ContentView: View {

    private var groceryCategories = GroceryCategory.all()

    var body: some View {
        List {
            ForEach(self.groceryCategories, id: \.title) { gc in
                Section(header: Text(gc.title)) {
                    ForEach(gc.groceryItems, id: \.title) { gi in
                        Text(gi.title)
                    }
                }

            }

        }
    }
}

#Preview {
    ContentView()
}
