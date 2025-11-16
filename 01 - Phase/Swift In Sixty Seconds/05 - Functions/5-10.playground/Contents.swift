import UIKit

// inout parameter


func doubleInPlace(number: inout: Int) {
    number *= 2
}

// cant use const
var myNum = 10
doubleInPlace(&myNum)


