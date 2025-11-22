import Cocoa

// How to create your own classes
 // inhertience
// custom init or have members with default values
// copy an instance of a class, copies share the same data
// can add deinitlizer  run when final copy is destory
// const class insances can have their variable properties change

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
