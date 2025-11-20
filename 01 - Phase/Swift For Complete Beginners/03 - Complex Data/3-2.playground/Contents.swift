import Cocoa


// How to store and find data in dictionaries

var employee = [
    "Name":"Taylor Swift",
    "Job":"Singer",
    "Location":"Nashville"
]

print(employee["Name", default: "Unknown"])
print(employee["Job", default: "Unknow"])
print(employee["Location", default: "Unknow"])



let hasGrdauted = [
    "Eric": false,
    "Mave": true,
    "Otis": false
]

let olypics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Toyko"
]

print(olypics[2012, default: "Unknow"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaqulie O'Neal"] = 216
heights["Lebron James"] = 206

var archEmeies = [String: String]()
archEmeies["Batman"] = "The Joke"
archEmeies["Superman"] = "Lex Luther"
archEmeies["Batman"] = "Penguin" // over write
