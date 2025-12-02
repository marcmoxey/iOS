//
//  ContentView.swift
//  ModifyingProgramState
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI
//  Views are a function if their state
struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}

