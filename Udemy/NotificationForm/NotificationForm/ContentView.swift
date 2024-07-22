//
//  ContentView.swift
//  NotificationForm
//
//  Created by Jorge Bustamante on 22/07/24.
//

import SwiftUI

struct ContentView: View {

    @State private var images = ["🗾","🌅","🌄","🌠","🎇","🌇","🗾","🌅","🌄","🌠","🎇","🌇"]
    @State private var selectionForPreview = 0

    var body: some View {
        NavigationStack {
            Form {
                Section {

                    Picker("Show Previews", selection: $selectionForPreview) {
                        ForEach(2..<5) { _ in
                            Text("Always")
                        }
                    }
                    .pickerStyle(.navigationLink)

                }

                Section {
                    Picker("Siri Suggestion", selection: $selectionForPreview) {
                        ForEach(2..<5) { _ in
                            Text("")
                        }
                    }
                    .pickerStyle(.navigationLink)
                } header: {
                    Text("Notification previews will be shown whether the iPhone is locker or unlocked")
                }

                Section {
                    ForEach(images, id: \.self) { image in
                            Text("\(image) Notification")
                    }
                } header: {
                    VStack(alignment: .leading) {
                        Text("Choose while apps can suggest shortcuts on the lock screen")
                        Text("Notification Style")
                            .textCase(.uppercase)
                    }
                }



            }
        }
    }
}

// Use picker view for form
// Use list inside a form

#Preview {
    ContentView()
}
