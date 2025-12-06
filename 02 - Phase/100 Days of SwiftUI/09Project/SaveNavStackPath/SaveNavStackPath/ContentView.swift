//
//  ContentView.swift
//  SaveNavStackPath
//
//  Created by Marc Moxey on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pathStore = PathStore()
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self)  { i in
                    DetailView(number: i)
                }
        }
       
    }
}



@Observable
class PathStore2 {
    // path data store using NavPath
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path:"SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(
                NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        // Still here? Start with an empty path
        path = NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else { return }
        
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save naigation data")
        }
    }
  
        
}


@Observable
class PathStore {
    // path data stored as array of ints
    var path: [Int] {
        didSet {
            save()
        }
    }
    
    
    private let savePath = URL.documentsDirectory.appending(path:"SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
                path = decoded
                return
            }
        }
        // Still here? Start with an empty path
        path = []
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(path)
            try data.write(to: savePath)
        } catch {
            print("Failed to save naigation data")
        }
    }
    
}


#Preview {
    ContentView()
}
