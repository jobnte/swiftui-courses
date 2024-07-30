//
//  ContentView.swift
//  Navigation
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }

    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")

    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }

        path = NavigationPath()
    }

    func save() {
        guard let representation = path.codable else { return }

        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}


struct DetailView: View {
    var number: Int

    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct ContentView: View {
    @State private var pathStore = PathStore()
    @State private var title = "SwiftUI"

    var body: some View {
//        NavigationStack(path: $path) {
//            List {
//                ForEach(0..<5) { i in
//                    NavigationLink("Select Number: \(i)", value: i)
//                }
//
//                ForEach(0..<5) { i in
//                    NavigationLink("Select String: \(i)", value: String(i))
//                }
//            }
//            .navigationDestination(for: Int.self) { selection in
//                Text("You selected the number \(selection)")
//            }
//            .navigationDestination(for: String.self) { selection in
//                Text("You selected the string \(selection)")
//            }
//            .toolbar {
//                Button("Push 556") {
//                    path.append(556)
//                }
//
//                Button("Push Hello") {
//                    path.append("Hello")
//                }
//            }
//        }

//        NavigationStack(path: $path) {
//            DetailView(number: 0, path: $path)
//                .navigationDestination(for: Int.self) { i in
//                    DetailView(number: i, path: $path)
//                }
//        }

        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap Me") {
                            // button action here
                        }
                    }

                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Or Tap Me") {
                            // button action here
                        }
                    }
                }
        }

//
//        NavigationStack {
//            Text("Hello, world!")
//                .navigationTitle($title)
//                .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

// NavigationStack & NavigationLink
// NavigationDestination
// NavigationPath
// Putting buttons in a toolbar
// Use of ToolbarItemGroup

#Preview {
    ContentView()
}
