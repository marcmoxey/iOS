import Cocoa

// Access Control

struct Person {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func idenitfly() -> String {
        return "My ssn is \(id)"
    }
}

let ed = Person(id: "12345")
ed.idenitfly()
