import Cocoa

// How to create and use protocols
protocol Vehicle {
    var name: String {get }
    var currentPassengers: Int { get set } // can't confromt protocol using const prop
    func estimeTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle{
    let name = "Car"
    var currentPassengers = 1
    func estimeTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimeTime(for: distance)   > 100 {
        print("That's too slow!. I'll try a differnt vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int ) {
    for vehicle in vehicles {
        let estimate = vehicle.estimeTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}


let car = Car()
commute(distance: 100, using: car)


struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimeTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car,bike], distance: 150)

