import Cocoa

// How to use for loop to repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}
 

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    print()
}


for i in 1...5 {
    print("Counting from 1 throught 5: \(i)")
}

for i in 1..<5 {
    print("Count from 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " Hate"
}

print(lyric)
