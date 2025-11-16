import Cocoa

// Unwrapping with guard - unwrap optional remains useable after the guard code

func greet(_ name: String?) {
    guard let unwrappedName = name else {
        print("You didn't provide a name")
        return // exits
    }
    
    // Happy path
    print("Hello, \(unwrappedName)")
}

