//
//  ContentView.swift
//  CapturingPhotosSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil

    var body: some View {
        VStack {

            image?.resizable()
                .scaledToFit()

            Button("Open Camera") {
                self.showImagePicker = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)

        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

#Preview {
    ContentView()
}
