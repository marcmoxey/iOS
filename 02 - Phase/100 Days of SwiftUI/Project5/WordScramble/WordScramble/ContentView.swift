//
//  ContentView.swift
//  WordScramble
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    
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
            .navigationTitle(rootWord)
        }
        .onSubmit(addNewWord)
        .onAppear(perform: startGame)
        .alert(errorTitle, isPresented: $showingError) {
            
        } message: {
            Text(errorMessage)
        }
    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add
        // duplicate words with case difference
        let answer = newWord.lowercased().trimmingCharacters(
            in: .whitespacesAndNewlines)
        
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }
        
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        
        guard tooShortWord(word: answer) else {
            wordError(title: "Word too short" , message: "Word has to be more than 3 characters")
            return
        }
        
        guard noRootWord(word: answer) else {
            wordError(title: "No start word", message: "Can't use start word")
            
            return
        }
        
        
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
                rootWord = allWords.randomElement() ?? "silkworm"
                
                // if we are here everything has worked, so we can exit
                return
            }
        }
        // if were are *here* there was a problem trigger a crash and report the error
        fatalError("Could not load start.txt from bundle")
    }
    
    func tooShortWord(word: String) -> Bool {
        if word.count < 3 {
            return false
        }
        
        return true
    }
    
    func noRootWord(word: String) -> Bool {
        if word != rootWord {
            return true
        }
        
        return false
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
        let misspelledRange = checker.rangeOfMisspelledWord(
            in: word,
            range: range,
            startingAt: 0,
            wrap: false,
            language: "en"
        )
        
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

#Preview {
    ContentView()
}
