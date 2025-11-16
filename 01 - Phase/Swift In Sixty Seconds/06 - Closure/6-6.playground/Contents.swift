import Cocoa


// Closure with parameters

func Travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived")
}


Travel { (place: String) in
        print("I'm going to \(place) in my car")
}
