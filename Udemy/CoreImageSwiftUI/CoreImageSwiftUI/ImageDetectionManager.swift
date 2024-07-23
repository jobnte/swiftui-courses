//
//  ImageDetectionManager.swift
//  CoreImageSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import Foundation
import CoreML
import UIKit

final class ImageDetectionManager {

    let model = Resnet50()

    func detect(_ img: UIImage) -> String? {
        guard
            let pixelBuffer = img.toCVPixelBuffer(),
            let prediction = try? model.prediction(image: pixelBuffer)
        else {
            return nil
        }

        return prediction.classLabel
    }

}
