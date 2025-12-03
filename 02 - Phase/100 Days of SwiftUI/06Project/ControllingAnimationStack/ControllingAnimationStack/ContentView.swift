//
//  ContentView.swift
//  ControllingAnimationStack
//
//  Created by Marc Moxey on 12/3/25.
// change before the animation() get animated

import SwiftUI

struct ContentView: View {
    @State private var enabled = false

    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .animation(nil, value: enabled) // disable animation
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .foregroundStyle(.white)
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    
    }
}

#Preview {
    ContentView()
}
