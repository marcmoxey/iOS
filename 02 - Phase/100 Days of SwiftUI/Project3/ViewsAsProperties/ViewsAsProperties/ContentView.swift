//
//  ContentView.swift
//  ViewsAsProperties
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var motto1: some View {
        Text("Draco dormines")
    }
    let motto2 = Text("nunquam titillandus")
    
    @ViewBuilder var spells: some View {// use to  return mulitple views
            Text("Lumos")
            Text("Obliviate")
        }
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
       
    }
}

#Preview {
    ContentView()
}
