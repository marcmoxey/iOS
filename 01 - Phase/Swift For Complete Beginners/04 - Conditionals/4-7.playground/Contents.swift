import Cocoa


// How to skip loop items with break and continue
// continue - skips the rest of current loop iteration
// break - skips all remmaining loop iteration

let filesnames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filesnames {
    if filename.hasPrefix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var mulitpes = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        mulitpes.append(i)
        
        if mulitpes.count == 10 {
            break
        }
    }
}
print(mulitpes)

