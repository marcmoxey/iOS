import Cocoa

// Write a function that accept an optional array of integers, and returns one of those integers randomly
// if the array is missing or empty, return a new random number in the range 1 through 100
// Write your function in a single line of code.


//func randInt(of arr: [Int]?) -> Int {
//    if let unWrappedArr = arr {
//        arr?.randomElement() ?? 0
//    }
//    
//    return Int.random(in: 1...100)
//}



func randInt(of arr: [Int]?) -> Int { arr?.randomElement() ??  Int.random(in: 1...100) }



var sumArr: [Int]? = nil
randInt(of: sumArr)
