//
//  ContentView.swift
//  NavStackReturnToRootViewProgrammatically
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    //@State private var path = [Int]()
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i, path: $path)
                }
            
        }
      
    }
}

#Preview {
    ContentView()
}
