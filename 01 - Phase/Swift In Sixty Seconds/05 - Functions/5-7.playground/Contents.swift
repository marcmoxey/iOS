import UIKit


// Variadic Function - accpet any numbers of parameter of the same type

print("Haters", "gonna", "hate")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squard is number \(number * number)")
    }
}


square(numbers: 1,2,3,4,5)
