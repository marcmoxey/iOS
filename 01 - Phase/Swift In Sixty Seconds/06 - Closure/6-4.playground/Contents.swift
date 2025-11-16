import UIKit

// Closure as parameters

let driving = {
    print("I'm driving in my car")
}


func travel(action: () -> Void) {
    print("I'm gettting ready to go.")
    action()
    print("I arrived")
}

travel(action: driving)
