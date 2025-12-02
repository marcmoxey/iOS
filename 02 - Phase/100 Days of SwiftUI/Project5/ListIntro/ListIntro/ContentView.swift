//
//  ContentView.swift
//  ListIntro
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia",  "Luke", "Ray"]
    var body: some View {
//        List {
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
        
//        List {
//            ForEach(0..<5) {
//                Text("Dynamic row \($0)")
//            }
 //       }
        
//        List {
//            Section("Section 1") {
//                Text("Static row 1")
//                Text("Static row 2")
//            }
//            
//            Section("Section 2") {
//                ForEach(Array(stride(from: 0, through: 4, by: 1)), id: \.self) { row in
//                    Text("Dynamic row \(row)")
//                }
//            }
//            
//            Section("Section 3") {
//                Text("Static row 3")
//                Text("Static row 4")
//            }
//         
//        }
//        .listStyle(.grouped)
        
//        List(Array(stride(from: 0, to: 5, by: 1)), id: \.self) { row in
//            Text("Dynamic row \(row)")
//            
//        }
        
//        List(people, id: \.self) {
//            Text($0)
//        }
        
        List {
            Text("Static Row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
        }
    }
}

#Preview {
    ContentView()
}
