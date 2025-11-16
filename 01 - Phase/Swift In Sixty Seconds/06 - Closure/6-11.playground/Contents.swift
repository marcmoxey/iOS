import Cocoa

// Capture Values


func travel() -> (String) -> Void {
    var counter = 1 // capture by close so will stay alive in closeure
    return {
        print(" \(counter). I'm going to \($0)")
        counter += 1
    }
}


let result = travel()
result("London")
result("London")
result("London")
result("London")

