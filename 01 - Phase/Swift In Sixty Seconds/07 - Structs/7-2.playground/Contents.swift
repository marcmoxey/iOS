import Cocoa

// Computed Properties

struct Sport  {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an olympic sport"
        }else {
                return "\(name) is not an olympic sport"
            }
        }
    }

let chessBoxing = Sport(name:"ChessBoxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
