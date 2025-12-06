//
//  ContentView.swift
//  ResizingImages
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Image Editing Practice 1")
            .resizable()
            //.scaledToFit()
            .scaledToFill( )
            //.frame(width: 300, height: 300 )
            //.clipped()
            .containerRelativeFrame(.horizontal) {
                size, axis in size * 0.8 
            }
    }
}

#Preview {
    ContentView()
}
