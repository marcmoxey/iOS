//
//  ContentView.swift
//  AnimatingBindings
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
//            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
            Stepper("Scale Amount", value: $animationAmount.animation(.easeInOut(
                duration: 1).repeatCount(3,autoreverses: true)), in: 1...10)
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    ContentView()
}
