//
//  ContentView.swift
//  CoreImageSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct ContentView: View {

    let images = ["cat1","dog","tree","mountains"]
    @State private var selectedImage = ""
    @ObservedObject private var imageDetectionVM: ImageDetectionViewModel
    private var imageDetectionManager: ImageDetectionManager

    init() {
        self.imageDetectionManager = ImageDetectionManager()
        self.imageDetectionVM = ImageDetectionViewModel(manager: self.imageDetectionManager)
    }

    var body: some View {
        NavigationView {
            VStack {
                ScrollView([.horizontal]) {
                    HStack {
                        ForEach(self.images,id: \.self) { name in
                            Image(name)
                            .resizable()
                                .frame(width: 300, height: 300)
                            .padding()
                                .onTapGesture {
                                    self.selectedImage = name
                            }.border(Color.black, width: self.selectedImage == name ? 10 : 0)
                        }
                    }
                }

                Button("Detect") {
                    self.imageDetectionVM.detect(self.selectedImage)
                }.padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                .cornerRadius(10)

                Text(self.imageDetectionVM.predictionLabel)
            }

        .navigationBarTitle("Core ML")

        }
    }
}

// Create an horizontal list using ScrollView(.horizontal), HStack, ForEach
// Implement MLModel to the project
// Implement algorithm to resize an UIImage
// Detect image using ml model resnet50

#Preview {
    ContentView()
}
