//
//  ContentView.swift
//  Implicitanimation
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(.default, value: animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
    }
}

#Preview {
    ContentView()
}
