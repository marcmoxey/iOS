import Cocoa

// How to use sets for fast data lookup


let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")
print(actors2) // no order, no dupes
