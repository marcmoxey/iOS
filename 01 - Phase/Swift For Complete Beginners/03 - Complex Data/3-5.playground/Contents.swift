import Cocoa

// How to use type annotations - swift must know the types of all data
let surname: String = "Lasso"
var score: Double = 0
let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var sode: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyles {
    case light, dark, system
}

var style = UIStyles.light
style = .dark


let username: String
// lots of comples code
username = "@twostraws"
// lots more comples logic
print(username)

//let scores: Int = "Zero"
