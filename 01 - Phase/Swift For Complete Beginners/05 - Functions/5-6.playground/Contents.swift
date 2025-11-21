import Cocoa

// How to handle errors in functions
    // Define all errors that could happen
    // Write function ask normal but throw and error if a serious problem is found
    // Try to run that function and handle any error that come back

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"
do {
    let result = try checkPassword(string) // try is needed for all function that throws errors
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please usa a longer password")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was and error \(error.localizedDescription)")
}
