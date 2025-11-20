import Cocoa

// How to store ordered data in arrays

var beatles = ["John", "Paul", "George", "Ringo"] // array of string
let numbers = [4,8,15,16,23,42] // array of int
var temperatures = [25.3,28.2, 26.4] // array of double
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Viviane")
beatles.append("Novall")

//temperatures.append("Chirs") // wont work


print(beatles[0])
print(numbers[1])
print(temperatures[2])


var scores = Array<Int>() // must hold ints
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = ["Folklore"]// must hold strings
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Ster;ing"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
