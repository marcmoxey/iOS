import Cocoa

// How to check multiple conditons

let age = 16

if age >= 18 {
    print("You can voute in the next elecetion")
} else  {
    print("Sorry, you're too young to vote ")
}


let temp = 25

if temp > 20 && temp < 30 {
        print("It's a nice day")
    }


let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can buy the gane")
}

enum TransportOption  {
    case airplane, train, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter
{
    print("Let's fly")
} else if transport == .bicycle {
    print("Hope there a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}
