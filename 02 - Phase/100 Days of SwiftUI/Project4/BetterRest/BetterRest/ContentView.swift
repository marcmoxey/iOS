//
//  ContentView.swift
//  BetterRest
//
//  Created by Marc Moxey on 12/1/25.
//

import CoreML
import SwiftUI



struct ContentView: View {
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
   
    
    
    var body: some View {
        NavigationStack {
            Form {
              Text("Who do you want to wake up?")
                    .font(.headline)
                
                DatePicker(
                    "Please enter a time z",
                    selection: $wakeUp,
                    displayedComponents: .hourAndMinute
                )
                .labelsHidden()
                Section {
                    Text("Desired amount of sleep")
                        .font(.headline)
                    
                    
                    Stepper(
                        "\(sleepAmount.formatted()) hours",
                        value: $sleepAmount,
                        in: 4...12,
                        step: 0.25
                    )
                }
               
             
                
                Stepper("^[\(coffeeAmount) cup](inflect:true)", value: $coffeeAmount, in: 1...20)
            }.alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") {}
            } message: {
                Text(alertMessage)
            }
            .navigationTitle("BettterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
    
    func calculateBedtime() {
        do {
            // creeate instance
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let componenets = Calendar.current.dateComponents(
                [.hour, .minute],
                from: wakeUp)
            let hour = (componenets.hour ?? 0) * 60 * 60
            let minute = (componenets.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(
                hour + minute
            ), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            alertTitle = "Your ideal bedtime is..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
            showingAlert = true
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
            showingAlert = true
        }
      
    }
}

#Preview {
    ContentView()
}
