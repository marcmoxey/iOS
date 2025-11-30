//
//  ContentView.swift
//  EnvironmentModifiers
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Gryffindor")
                .font(.largeTitle) // override outside modi
            Text("Hufflepuff")
                .blur(radius: 0)
            Text("Ravenclaw")
            Text("Slytherin")
            
        }
        .blur(radius: 3)
        .font(.title)
       
    }
}

#Preview {
    ContentView()
}
