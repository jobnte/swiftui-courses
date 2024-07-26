//
//  LandmarkListView.swift
//  NearMe
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct LandmarkListView: View {
    let landmarks: [LandmarkViewModel]

    var body: some View {
        List(landmarks, id: \.id) { landmark in
            VStack(alignment: .leading, spacing: 10) {
                Text(landmark.name)
                    .font(.headline)
                Text(landmark.title)
            }
        }
    }
}

#Preview {
    LandmarkListView(landmarks: [])
}
