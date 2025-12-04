//
//  ContentView.swift
//  StateWithObservable
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI
import Observation

struct ContentView: View {
    
    // @State keep object alive when working wiht class; ObervationTracked watch for changes
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("\(user.firstName)", text: $user.firstName)
            
            TextField("\(user.lastName)", text: $user.lastName)
        }
        
    }
}

@Observable // watch each individual property inside the class for changes
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

#Preview {
    ContentView()
}
