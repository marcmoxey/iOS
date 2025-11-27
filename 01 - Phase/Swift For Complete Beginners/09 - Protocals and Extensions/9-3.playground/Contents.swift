import Cocoa


// How to create and use extensions

var quote = "               The truth is rarely pure and never simple     "

//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
let trimmed = quote.trimmed()

extension String { // adding functionality to a string
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    // modify the string direcly
    mutating func trim() {
        self = self.trimmed()
    }

    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let timmed2 = trim(quote)


let lyrics = """
But I keep cruising 
Can't stop won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)



struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
    
}


extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
