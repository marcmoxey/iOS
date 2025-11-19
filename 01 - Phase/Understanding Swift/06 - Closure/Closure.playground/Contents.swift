import Cocoa


// used to store functionlity in a single variable, then store it somewhere


// Why are swift;s closure parameter inside the brace?
func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
        // code
}

// How do you return a value from a closure that takes no parameters?

// no return
let payment2 = { (user:String) in
    print("Paying \(user)")
}

// return a value
let payment3 = { (user:String) -> Bool in
    print("Paying \(user)")
    return true
}


// return with no parameters
let payment4 = { () -> Bool in
    print("Paying an anonymous person")
    return true
}

// Why does Swift have trailing closure syntax?

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out image")
})

// trailing closure
animate(duration: 3) {
    print("Fade out image")
}

// When would closures with parameters be used as parameters

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}


func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}


// When would you use closures with return values as parameters to a function

func reduce(_ values: [Int], using closure: (Int,Int) -> Int) -> Int {
    // start with total equal to the first value
    var current = values[0] // 10
    
    // loop over all the values in the array, count from index 1 on wards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current,value)
    }
    
    return current
}

let numbers = [10,20,30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

print(sum)

let sum2 = reduce(numbers, using: +)
print(sum2)


// Returning closures from functions

print(Int.random(in: 1...10))

func getRandomNumber() -> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber())


func makeRandomGenerator() -> () -> Int { // closure takes no parameters and returns an int
    let function = { Int.random(in: 1...10) }
    return function
}

let generator = makeRandomGenerator()
let random1 = generator()
print(generator())



// Why do Swift closures capture values
