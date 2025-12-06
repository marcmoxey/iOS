//
//  ContentView.swift
//  ProblemWithSimpleNavLink
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<1000)  { i in
                NavigationLink("Tap Me") {
                    DetailView(number: i)
                }
            }
           
         
        }
    }
}

#Preview {
    ContentView()
}
