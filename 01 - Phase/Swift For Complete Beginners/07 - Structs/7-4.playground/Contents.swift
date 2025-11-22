import Cocoa

// How to create custom initializers

struct Player {
    let name: String
    let number: Int
    
    // need values for all store props
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
        //self.number = number
    }
}

let player = Player(name: "Megan R")
print(player.number)
