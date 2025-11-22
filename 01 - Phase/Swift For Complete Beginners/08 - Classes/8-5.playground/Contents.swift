import Cocoa

// How to create a deinittializer for a class
    // dont use func with deinitilizrers
    // Deinitilzers can never take parameter or return data
    // Deinitialzers run when that last copy of a class instance is destoryed
    // We never call deinitializers directly
    // structs don't have deinitializers

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}


var users = [User]()
// destory when loop itertraion ends

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user) // stay alive b/c in the array
}

print("Loop us finished!")
users.removeAll()
print("Array is clear")
