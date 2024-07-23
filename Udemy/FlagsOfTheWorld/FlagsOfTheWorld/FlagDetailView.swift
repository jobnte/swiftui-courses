//
//  FlagDetailView.swift
//  FlagsOfTheWorld
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct FlagDetailView: View {

    @Binding var flagViewModel: FlagViewModel

    var body: some View {
        VStack {
            Text(flagViewModel.flag)
                .font(.custom("Arial", size: 200))

            TextField(text: $flagViewModel.country) {
                Text("Enter country name")
            }
            .padding()
            .fixedSize()

            Button(action: {
                flagViewModel.showModal.toggle()
            }, label: {
                Text("Submit")
            })
        }
    }
}

#Preview {
    FlagDetailView(
        flagViewModel: .constant(.init())
    )
}
