import Cocoa

// How to get the most from protocol extensions
    // self - current value
    // Self - current type


extension Int {
    func squared() -> Int {
        self * self
    }
}

// can use on  both a double and int
extension Numeric {
    func squared() -> Self {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())


struct User: Comparable { // Comparable inheritance from equatable
    let name: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.name < rhs.name
    }
}

let user1 = User(name: "Link")
let user2 = User(name: "Zedla")
print(user1 == user2)
print(user1 != user2)


let user3 = User(name: "Taylor")
let user4 = User(name: "Adele")
print(user3 >= user4)

