//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .promientTitle()
    }
}


extension View {
    func promientTitle() -> some View {
        modifier(Title())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}
    
    
    
    
    
    
    
    
    
    
    
#Preview {
    ContentView()
}
