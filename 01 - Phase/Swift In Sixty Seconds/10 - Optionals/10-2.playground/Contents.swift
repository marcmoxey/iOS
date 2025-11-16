import Cocoa


// Unwrapping Optionals

var name: String? = nil

if let unwrappedName = name {
    print("\(unwrappedName.count)")
} else {
    print("Missing name")
}
