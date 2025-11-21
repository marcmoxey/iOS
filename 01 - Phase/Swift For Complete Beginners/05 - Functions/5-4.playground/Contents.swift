import Cocoa

// How to customize parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}


func hireEmployee(name: String ) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

let lyic = "I see a red door and I want it painted black"
print(lyic.hasPrefix("I see"))

func  isUppercased(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result = isUppercased(string)


func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}


printTimesTable(for: 5)
