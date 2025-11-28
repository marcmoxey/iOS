//
//  ContentView.swift
//  BindingStateToUIControls
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        Form {
            TextField("Enter your name", text: $name) // $ - two way binding
            Text("Your name is \(name)")
        }
    }
}

#Preview {
    ContentView()
}
