//
//  ContentView.swift
//  iExpense
//
//  Created by Marc Moxey on 12/3/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var expenses = Expense()
    @State private var showingExpense = false
    
    
    
    var body: some View {
        NavigationStack {
            List {
                // removed id: /.self b/c conforms to idenifiable
                ForEach(expenses.items) { item in
                    if item.type == "Personal" {
                        Section("Personal") {
                            HStack {
                                VStack(alignment:.leading){
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.type)
                                    
                                }
                                Spacer()
                                let itemPrice = item.amount
                                //Text(itemPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                // if amount under $10 do a style
                                if itemPrice <= 10  {
                                    Text(itemPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundStyle(.green)
                                    // else if amount under $100 do a style
                                } else if itemPrice > 10 && itemPrice <= 100 {
                                    Text(itemPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundStyle(.yellow)
                                    // else if amount over $100 do a style
                                } else {
                                    Text(itemPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundStyle(.red)
                                }
                                
                            }

                        }
                        
                    } else if item.type == "Business" {
                        Section("Business") {
                            HStack {
                                VStack(alignment:.leading){
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.type)
                                    
                                }
                                Spacer()
                                Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                
                                
                            }
                            
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
//                    let expense = ExpenseItem(
//                        
//                        name: "Test",
//                        type: "Personal",
//                        amount: 5)
//                    expenses.items.append(expense)
                    showingExpense = true
                    
                }
                .sheet(isPresented: $showingExpense) {
                    AddView(expenses: expenses)
                }
            }
            .navigationTitle("iExpense")
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}




// Identifiable - this type can be identified uniquely
struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
    

   
}


@Observable
class Expense {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        // attempts to from whatever item as data object
        if let savedItems = UserDefaults.standard.data(forKey: "Items")  {
           // unarchiving the data
            // [ExpenseItem].self - referring to the type of object
            if let decodedItem = try? JSONDecoder().decode(
                [ExpenseItem].self,
                from: savedItems) {
                items = decodedItem
                return
            }
        }
        items = []
    }
    
}

#Preview {
    ContentView()
}
