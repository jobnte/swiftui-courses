//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jorge Bustamante on 16/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))

            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1721069275326-5fd80e01ce8d?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!) { image in
                image.resizable()
            } placeholder: {
                ProgressView("Downloading...")
            }

            Text("First Line")
                .foregroundStyle(.cyan)
                .font(.title3)
                .padding([.top, .bottom], 20)

            Text("Second Line")
                .foregroundStyle(.green)
            Text("Third Line")
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }.foregroundStyle(.orange)
            .padding()
    }
}

#Preview {
    ContentView()
}
