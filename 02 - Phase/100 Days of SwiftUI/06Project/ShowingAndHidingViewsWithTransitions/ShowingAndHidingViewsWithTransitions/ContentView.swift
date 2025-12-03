//
//  ContentView.swift
//  ShowingAndHidingViewsWithTransitions
//
//  Created by Marc Moxey on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingRed = false
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
             
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                //.transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        
        }
   
    }
}

#Preview {
    ContentView()
}
