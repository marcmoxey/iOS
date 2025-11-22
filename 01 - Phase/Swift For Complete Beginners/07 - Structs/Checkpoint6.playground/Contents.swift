import Cocoa


// Create a struct to store information about a car. Include
    // model
    // number of seats
    // Current gear
// add a method to change gears up or down
// have a think about variables and access control
// don't allow invalid gears - 1...10

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var  currentGear = 1
    
    init(model: String, numberOfSeats: Int, startingGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        
        if(1...10).contains(startingGear) {
            self.currentGear = startingGear
        } else {
            print("Invalid srarting gear")
            self.currentGear = 1
        }
    }
    
    mutating func changeGears(to newGear: Int)  {
        if (1...10).contains(newGear) {
            print("Shifting from \(currentGear) to \(newGear)")
            currentGear = newGear
        } else {
            print("Invalid gear: \(newGear). Allowed range is 1...10")
            return
        }
    
    }
}
    
    
var vette = Car(model: "Chevy Corvette", numberOfSeats: 2)
vette.changeGears(to: 5)
vette.changeGears(to: 2)


