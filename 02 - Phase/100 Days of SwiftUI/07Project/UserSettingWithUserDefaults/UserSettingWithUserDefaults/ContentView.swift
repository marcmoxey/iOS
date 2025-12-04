//
//  ContentView.swift
//  UserSettingWithUserDefaults
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    
    // works like state
    @AppStorage("tapCount") private var tapCount = 0
//    @State private var  tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

#Preview {
    ContentView()
}
