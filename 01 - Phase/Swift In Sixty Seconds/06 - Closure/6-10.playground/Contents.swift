import Cocoa


// Returing Closures

func travel() -> (String) -> Void { // returns closure that accepts string and returns void
    return {
        print("I'm going to \($0)")
    }
}


let result = travel()
result("London")


// better way
let result2 = travel()("London")
