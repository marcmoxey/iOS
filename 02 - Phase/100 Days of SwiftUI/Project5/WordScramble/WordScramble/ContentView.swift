//
//  ContentView.swift
//  WordScramble
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootedWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your world", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    
                    ForEach(usedWords, id:\.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                        
                    }
                }
            }
            .navigationTitle(rootedWord)
        }
        .onSubmit(addNewWord)
        .onAppear(perform: startGame)
        
    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add
        // duplicate words with case difference
        let answer = newWord.lowercased().trimmingCharacters(
            in: .whitespacesAndNewlines)
        
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        
        // extra validation to come
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
     
        newWord = ""
    }
    
    func startGame() {
        // 1. Find the url for the start.txt in our app bundle
        if let startWordURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            // 2. Load start txt into a string
            if let startWords = try? String(
                contentsOf: startWordURL) {
                // 3. Split the string up into an array of strings, splitting on the line break
                let allWords = startWords.components(separatedBy: "\n")
                
                // 4. Pick one random word, or use "silkworm as a sensible default
                rootedWord = allWords.randomElement() ?? "silkworm"
                
                // if we are here everything has worked, so we can exit
                return
            }
        }
        // if were are *here* there was a problem trigger a crash and report the error
        fatalError("Could not load start.txt from bundle")
    }
}

#Preview {
    ContentView()
}
