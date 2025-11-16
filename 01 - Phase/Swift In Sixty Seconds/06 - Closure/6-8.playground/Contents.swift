import Cocoa

// Shorthand parameter


func travel(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrive!")
}

travel { place in
    "I'm going to \(place) in my car"
    }
