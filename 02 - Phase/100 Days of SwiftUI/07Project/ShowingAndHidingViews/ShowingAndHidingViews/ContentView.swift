//
//  ContentView.swift
//  ShowingAndHidingViews
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false // track wheater the sheet is howing
   
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }.sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")
        }
    }
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    var body: some View {
        Text("Hello, \(name)")
        
        Button("Dismiss") {
            dismiss()
        }
    }
}



#Preview {
    ContentView()
}
