//
//  NeumorphicImageImageButton.swift
//  IntroNeumorphicDesign
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct NeumorphicImageButton: View {

    private var systemName: String
    private var onTap: () -> Void
    @State private var isPressed: Bool = false

    init(systemName: String, onTap: @escaping () -> Void) {
        self.systemName = systemName
        self.onTap = onTap
    }

    var body: some View {
        Button {

            isPressed = true

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                self.isPressed = false
            }

            onTap()
        } label: {
            Image(systemName: systemName)
                .resizable()
                .frame(width: 60, height: 60)
                .padding(30)
                .foregroundStyle(.red)
                .background(.gray)
        }
        .clipShape(Circle())
        .shadow(color: isPressed ? .white : .gray, radius: isPressed ? 4 : 8, x: 8, y: 8)
        .shadow(color: isPressed ? .gray : .white, radius: isPressed ? 4 : 8, x: -8, y: -8)
        .scaleEffect(isPressed ? 0.95 : 1.0)
        .animation(.spring)

    }
}

#Preview {
    NeumorphicImageButton(
        systemName: "heart.fill",
        onTap: {}
    )
}
