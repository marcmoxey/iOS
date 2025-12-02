//
//  ContentView.swift
//  ButtonAndImages
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Delete selection", role: .destructive, action: executeDelete)
        
        VStack {
            Button("Button1"){}
                .buttonStyle(.bordered)
            Button("Button2", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            Button("Button3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            
        }
        
        Button {
            print("Button was tapped")
        } label: {
            Text("Tap me!")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
        
        Button {
            print("Edit button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
