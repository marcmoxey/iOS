//
//  ContentView.swift
//  BetterRest
//
//  Created by Marc Moxey on 12/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationStack {
            VStack {
              Text("Who do you want to wake up?")
                    .font(.headline)
                
                DatePicker(
                    "Please enter a time",
                    selection: $wakeUp,
                    displayedComponents: .hourAndMinute
                )
                .labelsHidden()
                
                Text("desired amount of sleep")
                    .font(.headline)
                
                Stepper(
                    "\(sleepAmount.formatted()) hours",
                    value: $sleepAmount,
                    in: 4...12,
                    step: 0.25
                )
                
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("BettterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
    
    func calculateBedtime() {
        
    }
}

#Preview {
    ContentView()
}
