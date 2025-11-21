import Cocoa

// Your goal is to loop from 1 throught 100, and for each number:
// if it's a multiple of 3, print "Fizz"
// if it's a multiple of 5, print "Buzz"
// if it's a multiple of 3 and 5, print "FizzBuzz"
// otherwise , just print the number


for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
