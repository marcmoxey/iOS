import UIKit

// Trailing Closure Syntax

func Travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}


Travel() {
    print("I'm driving in my car")
}
