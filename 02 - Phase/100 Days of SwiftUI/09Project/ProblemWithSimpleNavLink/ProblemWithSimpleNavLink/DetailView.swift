//
//  DetailView.swift
//  ProblemWithSimpleNavLink
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

#Preview {
    let number = 556
    DetailView(number: number)
}
