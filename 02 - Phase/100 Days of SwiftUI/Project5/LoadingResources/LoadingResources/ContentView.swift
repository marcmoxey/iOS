//
//  ContentView.swift
//  LoadingResources
//
//  Created by Marc Moxey on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if let fileUrl = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle
        }
        
        
        if let fileContent = try? String(contentsOf: fileUrl) {
                // we loaded the file into a string
        }
    }
}

#Preview {
    ContentView()
}
