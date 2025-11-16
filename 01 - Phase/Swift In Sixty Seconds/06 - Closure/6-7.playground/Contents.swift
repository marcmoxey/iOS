import Cocoa

// Closure with return values

func travel(action: (String) -> String) {
    print("I'm going ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}


travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
        
}
