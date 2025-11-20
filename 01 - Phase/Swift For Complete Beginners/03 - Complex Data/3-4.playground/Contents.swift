import Cocoa

// How to create and use enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    
}
var day = Weekday.monday // type becomes fixed
day = .tuesday
day = .friday
