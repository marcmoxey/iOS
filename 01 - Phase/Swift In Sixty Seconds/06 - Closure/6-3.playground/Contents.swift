import UIKit


// Returing Values

let driving = { (place: String)  in
        print("I'm going to \(place) in my car")
    
    
}


let drivingWithReturn = { (place: String) -> String in
        return("I'm going to \(place) in my car")
    
}


drivingWithReturn("NYC")
