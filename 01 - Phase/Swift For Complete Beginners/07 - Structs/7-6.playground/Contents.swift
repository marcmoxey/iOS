import Cocoa



// Static properties and methods
    // self - The current value of a struct - 55, "Hello", true
    // Self - the curret type of struct - Int, String, Bool

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let exmaple = Employee(username: "cfederight", password: "h4irF0rce0ne")
}
