//
//  NotificationView.swift
//  SwiftUIDefaultBasicAnimation
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        Text("Success")
            .padding()
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 10, height: 70)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    NotificationView()
}
