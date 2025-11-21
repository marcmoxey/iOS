import Cocoa

// How return values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// Do two strings contain the same letter, regardless of their order
// This function should:
    // accept two string parameters
    // Return true if their letters are the same

func areLettersIdentical(string1: String, string2: String) -> Bool {
   return  string1.sorted() == string2.sorted()
}

let output = areLettersIdentical(string1: "Townhome", string2: "House")
print(output)


func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let output = sqrt(input)
//    return output
    return sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)
