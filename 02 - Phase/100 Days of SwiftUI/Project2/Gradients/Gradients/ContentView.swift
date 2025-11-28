//
//  ContentView.swift
//  Gradients
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            LinearGradient(
//                colors: [.white,.black],
//                startPoint: .top,
//                endPoint: .bottom
//            )
//            
//            LinearGradient(stops: [
//                .init(color: .white, location: 0.45),
//                .init(color: .black, location: 0.55),
//            ], startPoint: .top, endPoint: .bottom)
            
//            RadialGradient(colors: [
//                .blue,
//                .black
//            ], center: .center, startRadius: 20, endRadius: 200)
            
//            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
            
            Text("Your content")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
        
    }
}

#Preview {
    ContentView()
}
