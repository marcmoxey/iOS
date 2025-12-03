//
//  ContentView.swift
//  CustomTransition
//
//  Created by Marc Moxey on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowRed = false
    var body: some View {
       ZStack {
           Rectangle()
               .fill(.blue)
               .frame(width: 200, height: 200)
           
           if isShowRed {
               Rectangle()
                   .fill(.red)
                   .frame(width: 200, height: 200)
                   .transition(.pivot)
           }
        }
       .onTapGesture {
           withAnimation {
               isShowRed.toggle()
           }
       }
    }
}


extension AnyTransition {
    //
    static var pivot: AnyTransition {
        // what the view looks likw during during that transition
        .modifier(active: CornerRotateModfier(amount: -90, anchor: .topLeading),  identity: CornerRotateModfier(amount: 0, anchor: .topLeading)) // final state how the view looks
    }
}

struct CornerRotateModfier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

#Preview {
    ContentView()
}
