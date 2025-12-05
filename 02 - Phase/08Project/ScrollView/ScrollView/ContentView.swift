//
//  ContentView.swift
//  ScrollView
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            // lazy won't create views till actually shown
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    //Text("Item \($0)")
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity) // allow to tap anywhere on the screen and scroll
        }
    }
}


struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}
#Preview {
    ContentView()
}
