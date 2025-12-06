//
//  DetailView.swift
//  NavStackReturnToRootViewProgrammatically
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    @Binding var path: NavigationPath

    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
        
    }
}

//#Preview {
//    let number = 556
//    @Binding var path = [Int]
//    DetailView(number: 556, path: path)
//}
