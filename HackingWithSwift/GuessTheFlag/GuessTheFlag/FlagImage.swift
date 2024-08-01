//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Jorge Bustamante on 1/08/24.
//

import SwiftUI

struct FlagImage: View {
    let imageString: String

    var body: some View {
        Image(imageString)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

#Preview {
    FlagImage(imageString: "")
}
