import Cocoa


// How to handle missing data with optionals

let opposites = ["Mario":"Wario","Luigi":"Waluigi"]
let peachOpposite = opposites["Peach"] // nil

if let marioOpppposire = opposites["Mario"] {
    print("Mario's opposite is \(marioOpppposire)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}
  
var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = Int()
var arr3: [Int]? = nil // doesnt exists(absent) - has a value or not


func square(number: Int) -> Int { // expect a real int
    number * number
}

var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber)) // becomes a real number when unwrapped
}
//print(square(number: number))
