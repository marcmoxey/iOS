import Cocoa

// How to copy class
    // points to the same piece of data(reference type)
    

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)

var user3 = User()
var user4 = user3.copy()
user4.username = "Mike"
print(user3.username)
print(user4.username)



