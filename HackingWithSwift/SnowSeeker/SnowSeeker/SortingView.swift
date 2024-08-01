//
//  SortingView.swift
//  SnowSeeker
//
//  Created by Jorge Bustamante on 2/08/24.
//

import SwiftUI

struct SortingView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(Resorts.self) private var allResorts

    @State private var sorting = ""
    @State private var filterCountry = ""
    @State private var filterPrice = ""
    @State private var filterSize = ""

    let sortingChoices = ["Default", "Alphabetically", "Countrywise"]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Sort By", selection: $sorting) {
                        ForEach(sortingChoices, id: \.self) {sort in
                            Text(sort)
                        }
                    }
                }
            }
            .navigationBarItems(leading: Button(action: {
                self.dismiss()
            }, label: {
                Text("Cancel")
            }), trailing: Button(action: {
                self.sortingDone()
                self.dismiss()
            }, label: {
                Text("Save")
                    .fontWeight(.bold)
            }))
        }
    }

    func sortingDone() {
        if sorting.isEmpty == false {
            switch sorting.lowercased() {
            case "alphabetically":
                allResorts.sortResorts(by: Resorts.sortBy.alphabetical)
            case "countrywise":
                allResorts.sortResorts(by: Resorts.sortBy.country)
            default:
                allResorts.sortResorts(by: Resorts.sortBy.general)
            }
        }
    }
}
