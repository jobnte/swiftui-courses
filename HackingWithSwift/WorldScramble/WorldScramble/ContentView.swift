//
//  ContentView.swift
//  WorldScramble
//
//  Created by Jorge Bustamante on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    @State private var score = 0

    var body: some View {
        NavigationStack {
            List {

                Text("Current Score: \(score)")
                
                Section {
                    TextField("Enter your word", text: $newWord)
                        .onSubmit(addNewWord)
                        .textInputAutocapitalization(.never)
                }

                ForEach(usedWords, id: \.self) { word in
                    HStack {
                        Image(systemName: "\(word.count).circle")
                        Text(word)
                    }
                }

            }
            .navigationTitle(rootWord)
            .toolbar {
                Button("Start game", action: startGame)
            }
        }
        .onAppear(perform: startGame)
        .alert(errorTitle, isPresented: $showingError) {
            Button("OK") { }
        } message: {
            Text(errorMessage)
        }
    }

    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        guard answer.count > 3 else { return }

        guard isOriginal(word: answer) else {
            score -= 1
            wordError(title: "Word used already", message: "Be more original")
            return
        }

        guard isPossible(word: answer) else {
            score -= 1
            wordError(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'!")
            return
        }

        guard isReal(word: answer) else {
            score -= 1
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }

        withAnimation {
            usedWords.insert(answer, at: 0)
            score += 1
        }
        newWord = ""
    }

    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }

    func isPossible(word: String) -> Bool {
        var tempWord = rootWord

        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }

        return true
    }

    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

        return misspelledRange.location == NSNotFound
    }

    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }

    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")

                rootWord = allWords.randomElement() ?? "silkworm"

                return
            }
        }

        // If were are *here* then there was a problem – trigger a crash and report the error
        fatalError("Could not load start.txt from bundle.")
    }
}

#Preview {
    ContentView()
}
