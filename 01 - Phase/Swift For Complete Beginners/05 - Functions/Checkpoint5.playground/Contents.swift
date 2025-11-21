import Cocoa


// Write  function that accepts an integer from 1 through 10,000, and
// returns the integer square root of that number
    // You can't use the builit-in sqrt() function or similar - you need to find
    // the square root yourself
    // if the number is less than 1 or greater than 10,000 you should throw an "out of bounds error
    // you should only consider integer square roots
    // if you can't find the square root, throw a "no root" error

enum NumberError: Error {
    case outOfBounds, noRoot
}

func squreRoot(for number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        NumberError.outOfBounds
    }
    
    var guess = 1
    while guess * guess <= number { // Keep trying as long as guess × guess isn’t bigger than the number.
        if guess * guess == number { // guess × guess is exactly the number we want, we found the answer! Give it back
            return guess
        }
        guess += 1 // If this guess didn’t work, try the next number.
    }
    
    throw NumberError.noRoot
}
do {
     let result = try squreRoot(for: 64)
    print(result)
    
} catch {
    print("Error happen")
}


