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
        }
        .navigationTitle(rootedWord)
        .onSubmit(addNewWord)
        
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
            usedWords.insert(answer, at: 0)g
        }
     
        newWord = ""
    }
}

#Preview {
    ContentView()
}
