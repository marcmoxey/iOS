//
//  ContentView.swift
//  PlacingToolbarInExactLocations
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello world!")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        
                        Button("Tap Me") {
                            
                        }
                        
                        Button("Or Tap Me") {
                            
                        }
                    }
                 
                }
        }
    }
}

#Preview {
    ContentView()
}
