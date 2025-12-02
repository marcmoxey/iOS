//
//  ContentView.swift
//  ViewsInALoop
//
//  Created by Marc Moxey on 11/28/25.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Herminoe", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
