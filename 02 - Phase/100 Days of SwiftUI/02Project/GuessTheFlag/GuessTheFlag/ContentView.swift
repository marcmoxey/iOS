//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var animationAmount = 0.0
    @State private var selectedFlag: Int = -1
    @State private var opacityLevel = 1.0
    @State private var scaleAmount = 1.0
    
    var body: some View {
        
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
                
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                VStack(spacing: 15) {
                    VStack{
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            .foregroundStyle(.secondary)
                        
                        ForEach(0..<3) { number in
                            Button {
                                selectedFlag = number         // ← correct flag stored
                                
                                flagTapped(number)
                                
                                withAnimation(.easeInOut) {
                                    animationAmount += 360    // only rotates selected flag
                                    opacityLevel = 0.25       // fades other flags
                                    scaleAmount -= 0.5
                                }
                                
                            } label: {
                                FlageImage(flag: countries[number])
                                    .rotation3DEffect(
                                        .degrees(selectedFlag == number ? animationAmount : 0),
                                        axis: (x: 0, y: 1, z: 0)
                                    )
                                //If the player hasn’t tapped any flag OR this is the flag they tapped → keep it fully visible
                                    .opacity(
                                        selectedFlag == -1 || selectedFlag == number
                                        ? 1          // before tap OR correct flag → full opacity
                                        : opacityLevel  // fade only other flags
                                    )
                                    .scaleEffect(
                                        selectedFlag == -1 || selectedFlag == number ? scaleAmount : 0.5
                                    )
                            }
                        }
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
        .alert(
            scoreTitle,isPresented: $showingScore) {
                if score == 8 {
                    Button("Restart", action: RestartGame)
                    
                } else {
                    Button("Continue", action: askQuestion)
                }
            }message: {
                Text("Your score is  \(score)")
            }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            if score == 8 {
                scoreTitle = "Game Over!"
            }
        
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
            
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        // RESET animation states
        selectedFlag = -1
        opacityLevel = 1.0
        animationAmount = 0
        scaleAmount = 1.0
    }
    
    func RestartGame() {
        askQuestion()
        score = 0
    }
    
    struct FlageImage: View {
        var flag: String
        
        var body: some View {
            Image(flag)
                .clipShape(.capsule)
                .shadow(radius: 5)
                
        }
    }
    
}

#Preview {
    ContentView()
}
