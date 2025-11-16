import Cocoa

// How to create and use closures

func greetUser() {
    print("Hi there")
}

greetUser()

var greetCopy = greetUser // When copying a func, don't need to write the () after it
greetCopy()


// Creating a closure
let sayHello = {
    print("Hi there!")
}
sayHello()


// Closure accept parameters
let sayHI = { (name: String) -> String in
    "Hi \(name)"
}

var greetCopy2: () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymus"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

sayHI("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tash"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1  < name2
}


//let captainFirstTeamm = team.sorted(by: captainFirstSorted)
//print(captainFirstTeamm)

// passing in a closure
let captainFirstTeam = team.sorted(by: {
    (name1: String, name2: String) -> Bool in
    
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1  < name2
})

print(captainFirstTeam)
