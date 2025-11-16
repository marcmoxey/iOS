import UIKit

// Default parameters


func greet(_ person: String, nicely: Bool = true) {
    if nicelyy == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again")
    }
}


greet("Taylor")
greet("Taylor", nicely: false)

