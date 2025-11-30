//
//  ContentView.swift
//  CustomContainers
//
//  Created by Marc Moxey on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
            
            
        }
    }
}
            // Generics - provide any content but conforms to View protocol
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { rows in
                HStack {
                    ForEach(0..<columns, id: \.self) { columns in
                        content(rows,columns)
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
