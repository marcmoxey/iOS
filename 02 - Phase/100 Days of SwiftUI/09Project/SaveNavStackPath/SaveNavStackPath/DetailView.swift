//
//  DetailView.swift
//  SaveNavStackPath
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...100))
            .navigationTitle("Number: \(number)")
    }
}

#Preview {
    let number = 556
    DetailView(number: number)
}
