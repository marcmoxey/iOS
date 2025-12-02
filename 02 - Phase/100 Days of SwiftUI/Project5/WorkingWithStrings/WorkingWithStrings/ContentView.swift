//
//  ContentView.swift
//  WorkingWithStrings
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    let input = """
    a 
    b
    c
    """
    let word = "swift"
    let checker = UITextChecker()
    
    var letters: [String] {
        input.components(separatedBy: "\n")
    }
    
    var letter: String {
        letters.randomElement() ?? ""
    }
    
    var trimmed:String {
        input.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var range : NSRange {
        NSRange(location: 0, length: word.utf16.count)
    }
    
    var missplelledRange: NSRange {
        checker
            .rangeOfMisspelledWord(
                in: word,
                range: range,
                startingAt: 0,
                wrap: false,
                language: "en"
            )
    }
    
    var  allGood: Bool {
        missplelledRange.location == NSNotFound
    }
    
    var body: some View {
   
    }
}

#Preview {
    ContentView()
}
