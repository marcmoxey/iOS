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
    
    var recommendedBedtime: String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(
                wake: Double(hour + minute),
                estimatedSleep: sleepAmount,
                coffee: Double(coffeeAmount)
            )
            
            let sleepTime = wakeUp - prediction.actualSleep
            return sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            return "Error calculating bedtime"
        }
    }

   
    
    
    var body: some View {
        NavigationStack {
            Form {
              Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker(
                    "Please enter a time",
                    selection: $wakeUp,
                    displayedComponents: .hourAndMinute
                )
                .labelsHidden()
                Section {
                    Text("Desired amount of sleep")
                        .font(.headline)
                    
                    Picker("Hours", selection: $sleepAmount) {
                        ForEach(Array(stride(from:4.0, through: 12.0, by: 0.25)), id: \.self) { hour in
                            Text("\(hour, specifier: "%.2g") Hours")
                        }
                    }
                    .pickerStyle(.navigationLink)
//                    Stepper(
//                        "\(sleepAmount.formatted()) hours",
//                        value: $sleepAmount,
//                        in: 4...12,
//                        step: 0.25
//                    )
                }
                Section("Amount of coffee") {
                    Stepper("^[\(coffeeAmount) cup](inflect:true)", value: $coffeeAmount, in: 1...20)
                }
                
                Section("Recommned Bedtime") {
                    Text(recommendedBedtime)
                }
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

extension View {
    func largeTitle() -> some View {
        modifier(Title())
    }
}


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
    }
}


#Preview {
    ContentView()
}
