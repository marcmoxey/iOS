//
//  ContentView.swift
//  iExpense
//
//  Created by Marc Moxey on 12/3/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var expenses = Expense()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(
                        name: "Test",
                        type: "Personal",
                        amount: 5)
                    expenses.items.append(expense)
                    
                }
            }
            .navigationTitle("iExpense")
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpenseItem {
    let name: String
    let type: String
    let amount: Double
}


@Observable
class Expense {
    var items = [ExpenseItem]()
}

#Preview {
    ContentView()
}
