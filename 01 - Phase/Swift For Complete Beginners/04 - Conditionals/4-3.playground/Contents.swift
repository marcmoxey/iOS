import Cocoa

// How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unkown
}
 
let forecast = Weather.rain

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case . wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unkown:
    print("Our forecase generator is broken")
}


let place = "Metroplies"

switch place {
case "Gotham":
    print("You're Batman")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle dove")
    fallthrough
default:
    print("A partridge in a pear tree")
}
