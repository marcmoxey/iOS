//
//  ContentView.swift
//  CustommizingAnimation
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
        //.scaleEffect(animationAmount)
        .overlay(Circle()
            .stroke(.red)
            .scaleEffect(animationAmount)
            .opacity(2 - animationAmount)
            .animation(.easeOut(duration: 1)
                .repeatForever(autoreverses: false), value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
//        .animation(.default, value: animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.linear, value: animationAmount)
        //.animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
//        .animation(.easeInOut(duration: 2)
//            .delay(1), value: animationAmount)
//        .animation(
//            .easeInOut(duration: 1)
//            .repeatCount(3,autoreverses: true),
//            value: animationAmount)
//        
        
        
        
    }
}

#Preview {
    ContentView()
}
