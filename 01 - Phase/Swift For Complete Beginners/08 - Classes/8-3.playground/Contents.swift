import Cocoa

// How to add initializers for classes

class Vehicle {
    
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}


class Car: Vehicle {
    let isConvertible = false
//
//    init(isConvertible: Bool, isElectric: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric) // parent init (NEEDED!!!)
//    }
}

//let teslaX = Car(isConvertible: true, isElectric: false)

let teslaX = Car(isElectric: false)
