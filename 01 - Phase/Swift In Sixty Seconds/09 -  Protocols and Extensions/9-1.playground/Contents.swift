import Cocoa

// Protocols - ways of describle what properts a method must have


protocol Identifiable {
    var id: String { get set}
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My id is \(thing.id)")
}
