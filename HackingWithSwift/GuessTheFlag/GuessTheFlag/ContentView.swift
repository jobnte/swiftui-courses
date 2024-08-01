//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Bustamante on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var showingAlert = false
    @State private var showingScore = false
    @State private var showingWrongAlert = false
    @State private var scoreTitle = ""
    @State private var wrongAlertTitle = ""
    @State private var score = 0
    @State private var rotations: [Double] = Array(repeating: 0, count: 3)
    @State private var opacities: [Double] = Array(repeating: 1.0, count: 3)

    @State private var currentGameIndex = 0
    @State private var games: [Int] = Array.init(repeating: Int.random(in: 0...2), count: 8)
 
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))

                        Text(countries[games[currentGameIndex]])
                            .font(.largeTitle.weight(.semibold))
                            .foregroundStyle(.white)
                    }

                    ForEach(0..<3) { number in
                        Button {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                opacities[number] = isCorrectAnswer(number) ? 1 : 0.25
                                rotations[number] += 360
                                flagTapped(number)
                            }
                        } label: {
                            FlagImage(imageString: countries[number])

                        }
                        .rotation3DEffect(
                            .degrees(rotations[number]),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .opacity(opacities[number])
                    }

                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))

                Spacer()
                Spacer()

                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())

                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Reset", action: resetGame)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Wrong", isPresented: $showingWrongAlert) {
            Button("Ok", action: {})
        } message: {
            Text(wrongAlertTitle)
        }
    }

    func resetGame() {
        currentGameIndex = 0
        score = 0
        games = Array.init(repeating: Int.random(in: 0...2), count: 8)
        countries.shuffle()
    }

    func askQuestion() {
        currentGameIndex += 1
        countries.shuffle()
    }

    func isCorrectAnswer(_ number: Int) -> Bool {
        return number == games[currentGameIndex]
    }

    func flagTapped(_ number: Int) {
        if isCorrectAnswer(number) {
            incrementScore()
        } else {
            wrongAlertTitle = "That's the flag of \(countries[number])"
            showingWrongAlert = true
        }

        if currentGameIndex + 1 < games.count {
            askQuestion()
        } else {
            showingScore = true
        }
    }

    func incrementScore() {
        score += 1
    }

    func decreaseScore() {
        score -= 1
    }
}

#Preview {
    ContentView()
}
