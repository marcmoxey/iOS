import UIKit

//Range Operator

let score = 85

switch score {
case 0..<50: // execule the 50
    print("You failed badly")
case 50..<85:
    print("You did ok")
default:
    print("You did great!")
}

