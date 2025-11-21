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

let personInfo = ["Lebron" : 35, "Messi": 38, "Neymar":32]

for (personName, personAge) in personInfo{
    print("\(personName) is \(personAge) years old")
}

let studentScores = ["Alice":90, "Bob":85, "Charlie":88]

for studentName in studentScores.keys {
    print("Student: \(studentName)")
}

let productPrices = ["Laptop": 1200.00, "Mouse":25.00, "Keyboard":75.00]

for price in productPrices.values {
    print("Price: \(price)")
}
