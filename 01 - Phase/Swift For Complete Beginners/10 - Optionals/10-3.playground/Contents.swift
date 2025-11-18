import Cocoa

// How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise" : "Picard",
    "Voyager":"Janeway",
    "Defiant":"Sisko"
]


let new = captains["Serenity"] ?? "N/A"


let tvShow = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShow.randomElement()?.uppercased() ?? "None"

struct Book {
    let title: String
    let author: String?
    
}

let book = Book(title: "Beouwulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
