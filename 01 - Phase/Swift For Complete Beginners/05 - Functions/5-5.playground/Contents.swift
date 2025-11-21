import Cocoa

// How to provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}


printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var charcters = ["Lana", "Pam", "Ray", "Sterling"]
print(charcters.count)
charcters.removeAll(keepingCapacity: true) // leave the array to keep the capacity
print(charcters.count)

