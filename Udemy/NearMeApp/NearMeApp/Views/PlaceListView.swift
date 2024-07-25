//
//  PlaceListView.swift
//  NearMeApp
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI
import MapKit

struct PlaceListView: View {

    let landmarks: [Landmark]
    var onTap: () -> ()

    var body: some View {

        VStack {
            HStack {
                EmptyView()
            }
            .frame(width: UIScreen.main.bounds.size.width, height: 60)
            .background(Color.blue)
            .gesture(TapGesture()
                .onEnded(self.onTap)
            )

            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
            }
            .animation(nil)

        }
        .cornerRadius(16)
    }
}

#Preview {
    PlaceListView(landmarks: [Landmark(placemark: MKPlacemark(coordinate: .init(latitude: 0, longitude: 0)))], onTap: { })
}
