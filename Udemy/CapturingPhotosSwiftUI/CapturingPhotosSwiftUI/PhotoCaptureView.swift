//
//  PhotoCaptureView.swift
//  CapturingPhotosSwiftUI
//
//  Created by Jorge Bustamante on 23/07/24.
//

import SwiftUI

struct PhotoCaptureView: View {

    @Binding var showImagePicker: Bool
    @Binding var image: Image?

    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#Preview {
    PhotoCaptureView(
        showImagePicker: .constant(false),
        image: .constant(nil)
    )
}
