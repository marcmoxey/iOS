import Cocoa

// how to use the ternary conditional operator for quick tests

let age = 18
// condition to check - Something to send back when condtion is true - something to send back when condtion is false (W- What we checking, T - What we doing if it true, F - What to do if it false)
var canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23
print(hour < 12 ? "It's brfore noon" : "It afternoon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

