import Cocoa

// How to return multiple values from functions


func getUser() -> (firstName:String, lastName:String){
    (firstName: "Taylor", lastName: "Swift")
}

//let user = getUser()
let (firstName, lastName) = getUser() // destructing
//let firstName = user.firstName
//let lastName = user.lastName
//print("Name: \(user.firstName) \(user.lastName)")
print("Name: \(firstName) \(lastName)")
