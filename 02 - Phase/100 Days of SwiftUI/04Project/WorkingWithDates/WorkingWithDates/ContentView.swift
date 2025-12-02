//
//  ContentView.swift
//  WorkingWithDates
//
//  Created by Marc Moxey on 12/1/25.
//

import SwiftUI

struct ContentView: View {
    let now = Date.now
    let tomorrow = Date.now.addingTimeInterval(86_400)
    let range = now...tomorrow
    let components =  Calendar.current.dateComponents([.hour,.minute], from: someDate)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    
    var body: some View {
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
}

#Preview {
    ContentView()
}
