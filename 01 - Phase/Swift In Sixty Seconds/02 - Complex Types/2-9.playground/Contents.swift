import UIKit

// Enums Associated Values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


let activity: Activity = .singing(volume: 10)
