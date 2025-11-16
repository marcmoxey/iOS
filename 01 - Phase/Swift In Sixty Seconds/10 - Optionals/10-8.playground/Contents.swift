import Cocoa

// Optional try

enum PasswordError: Error {
    case obvious
}


func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}


do {
    try checkPassword("password")
    print("That password is good!")
    
} catch {
    print("You can't use that password")
}

// makes function return an optional
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh")
}

// use when the function wont fail
try! checkPassword("sekrit")
print("ok")
