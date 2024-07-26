//
//  ColorPickerView.swift
//  PaintApp
//
//  Created by Jorge Bustamante on 26/07/24.
//

import SwiftUI

struct ColorPickerView: View {

    let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple]
    @Binding var selectedColor: Color

    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in

                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill : Constants.Icons.circleFill)
                    .foregroundColor(color)
                    .font(.system(size: 16))
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}


#Preview {
    ColorPickerView(selectedColor: .constant(.red))
}
