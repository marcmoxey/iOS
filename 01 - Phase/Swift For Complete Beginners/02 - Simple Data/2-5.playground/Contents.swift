import Cocoa

// How to store truth with Booleans

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle() // true
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated // true
print(isAuthenticated)
isAuthenticated = !isAuthenticated // false
print(isAuthenticated)
