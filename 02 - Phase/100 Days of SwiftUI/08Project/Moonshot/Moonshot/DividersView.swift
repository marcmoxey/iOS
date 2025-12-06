//
//  DividersView.swift
//  Moonshot
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct DividersView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Divider()
    }
}



struct Dividers: View {
    
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    DividersView()
}
