//
//  HelloProgressView.swift
//  GridSwiftUI2
//
//  Created by Jorge Bustamante on 25/07/24.
//

import SwiftUI

struct HelloProgressView: View {

    @State private var downloaded: CGFloat = 0

    private func startDownload() {
        let timer = Timer(timeInterval: 0.1, repeats: true) { timer in

            if downloaded < 100 {
                downloaded += 1
            } else {
                timer.invalidate()
            }
        }

        RunLoop.main.add(timer, forMode: .common)
    }

    var body: some View {
        VStack {
            ProgressView("Loading", value: downloaded, total: 100)
            Button("Download") {
                self.startDownload()
            }
        }
    }
}

#Preview {
    HelloProgressView()
}
