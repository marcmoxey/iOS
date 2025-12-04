//
//  ContentView.swift
//  SstateWithClasses
//
//  Created by Marc Moxey on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            
            
        }
        
    }
}

@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

#Preview {
    ContentView()
}
