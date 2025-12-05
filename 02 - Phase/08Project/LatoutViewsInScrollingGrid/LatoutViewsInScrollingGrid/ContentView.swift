//
//  ContentView.swift
//  LatoutViewsInScrollingGrid
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        //GridItem(.fixed(80)),
        //GridItem(.fixed(80)),
       // GridItem(.fixed(80))
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    var body: some View {
     
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
        
        ScrollView {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
