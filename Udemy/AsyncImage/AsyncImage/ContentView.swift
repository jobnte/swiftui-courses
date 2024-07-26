//
//  ContentView.swift
//  AsyncImage
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ContentView: View {

    let image = URL(string: "https://www.usatoday.com/gcdn/-mm-/7efc53ff9ce744597ce691011ac1c7274e26a947/c=172-0-2828-1997/local/-/media/2016/02/11/USATODAY/USATODAY/635908058668140572-AP-FILM-REVIEW-DEADPOOL-79512492.JPG")!

    var body: some View {
        AsyncImage(url: image) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else if phase.error != nil {
                Image(systemName: "exclamationmark.circle")
            } else {
                Image(systemName: "photo")
            }
        }
    }
}

#Preview {
    ContentView()
}
