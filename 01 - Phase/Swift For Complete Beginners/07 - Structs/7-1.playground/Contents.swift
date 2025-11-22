import Cocoa

// How to create your own structs
    // if struct instance const the prop are const too

struct Album {
    let title: String
    let artist: String
    let year: Int
     
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vactionRemainig = 14
    
    mutating func takeVaction(days: Int) {
        if vactionRemainig > days {
            vactionRemainig -= days
            print("I'm going in vacation")
            print("Days remaining: \(vactionRemainig)")
        } else {
            print("Oops! there aren't enough day remaining")
            
        }
        
    }
}


var archer = Employee(name: "Sterling Archer", vactionRemainig: 14)
archer.takeVaction(days: 5)
print(archer.vactionRemainig)


let a = 1
let b = 2.0
let c = Double(a) + b

let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Poovey", vactionRemainig: 35)
