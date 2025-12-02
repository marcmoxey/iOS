//
//  ContentView.swift
//  Form
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section { // splits form up
                Text("Hello, world!")
            }
         
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
            }
         
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
    }
}

#Preview {
    ContentView()
}
