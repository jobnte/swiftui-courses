//
//  ImageDetectionViewModel.swift
//  CoreImageSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import Foundation
import SwiftUI
import Combine

final class ImageDetectionViewModel: ObservableObject {

    var name: String = ""
    var manager: ImageDetectionManager
    @Published var predictionLabel: String = ""

    init(manager: ImageDetectionManager) {
        self.manager = manager
    }

    func detect(_ name: String) {

        // resize the image
        let sourceImage = UIImage(named: name)
        guard let resizedImage = sourceImage?.resizeImage(targetSize: .init(width: 224, height: 224)) else {
            return
        }

        // detect the image
        if let label = self.manager.detect(resizedImage) {
            self.predictionLabel = label
        }
    }
}
