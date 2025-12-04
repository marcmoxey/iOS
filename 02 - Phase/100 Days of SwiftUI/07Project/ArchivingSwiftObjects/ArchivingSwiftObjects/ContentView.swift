//
//  ContentView.swift
//  ArchivingSwiftObjects
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
        
        Button("Load User") {
            // get user data
            if let data = UserDefaults.standard.data(forKey: "UserData") {
                let decoder = JSONDecoder()
                
                // decode data
                if let decodeUser = try? decoder.decode(User.self,  from: data) {
                    
                    // present user
                    user = decodeUser
                    showingSheet.toggle()
                  
                }
            }
        }.sheet(isPresented: $showingSheet) {
            ShowData(user: user)
        }
        
 

    }
}


// Codable - converting objects into plain text and back again
struct User : Codable {
    let firstName: String
    let lastName: String
}

struct ShowData: View {
    var user: User
    var body: some View {
        Text("Hello \(user.firstName) \(user.lastName)")
    }

}


#Preview {
    ContentView()
}
