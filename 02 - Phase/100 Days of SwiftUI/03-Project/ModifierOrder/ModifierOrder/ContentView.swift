//
//  ContentView.swift
//  ModifierOrder
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
        }
        .padding()
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
        
    }
}

#Preview {
    ContentView()
}
