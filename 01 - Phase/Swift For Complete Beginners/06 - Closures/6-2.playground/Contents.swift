import Cocoa

// How to use trailing closure and shorthand syntax

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// dont need the type for parameter and return type
let sorted = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
          
    return name1 < name2
    
}
print(sorted)

let reverseTeam = team.sorted { $0 > $1 }


// When not to use short hand
    // when closure body too long
    // when $0 & $1 use muiltple times
    // when you have 3 or more parameters


let tOnly = team.filter({
    $0.hasPrefix("T")
})
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
