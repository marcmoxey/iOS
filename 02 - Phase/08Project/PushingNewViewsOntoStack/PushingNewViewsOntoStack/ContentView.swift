//
//  ContentView.swift
//  PushingNewViewsOntoStack
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        NavigationStack {
        //            NavigationLink {
        //                Text("Detail View")
        //            } label: {
        //                VStack {
        //                    Text("This is the label")
        //                    Text("So is this")
        //                    Image(systemName: "face.smiling")
        //                }
        //                .font(.largeTitle)
        //            }
        //        }
        //            .navigationTitle("SwiftUI")
        //        }
        
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
                
            }
            .navigationTitle("SwiftUI")
        }
    }
}
#Preview {
    ContentView()
}
