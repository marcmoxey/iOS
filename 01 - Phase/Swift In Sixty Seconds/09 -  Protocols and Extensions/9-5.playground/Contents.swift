import Cocoa

// Protocol-Oriented Programming

protocol Identfiable {
    var id: String {get set }
    
    func identify()
}

extension Identfiable {
    func identify() {
        print("My ID is \(id)")
    }
}


struct User: Identfiable {
    var id: String
}

let twostraws = User(id: "12345")
twostraws.identify()
