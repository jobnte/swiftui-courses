//
//  ContentView.swift
//  FlagsOfTheWorld
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct ContentView: View {

    let flags = ["🇦🇫", "🇦🇸", "🇧🇬", "🇹🇩", "🇵🇫", "🇩🇪"]
    @State private var viewModel = FlagViewModel()

    var body: some View {
        List {

            Text(viewModel.country)

            ForEach(flags, id: \.self) { flag in
                HStack {
                    Text(flag)
                        .font(.custom("Arial", size: 100))
                    Spacer()
                }.gesture(
                    TapGesture()
                        .onEnded { _ in
                            self.viewModel.flag = flag
                            self.viewModel.showModal.toggle()
                        }
                )
            }
        }
        .sheet(isPresented: self.$viewModel.showModal) {
            FlagDetailView(
                flagViewModel: $viewModel
            )
        }
    }
}

// Basic usage of .sheet
// Passing data to a view in a sheet
// Use of ViewModel to pass data to detail view


#Preview {
    ContentView()
}
