//
//  ContentView.swift
//  ConditionalModifiers
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        Button("Hello, world!") {
            // flip the bool between true and false
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ContentView()
}
