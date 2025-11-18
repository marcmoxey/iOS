import Cocoa

// How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) { // try? help if wanna know if function work or not
    print("User: \(user)")
}


let user = (try? getUser(id: 23)) ?? "Anonymous"

// use in graud let
// nil coalesing
// when call any throwing any function with out return value
