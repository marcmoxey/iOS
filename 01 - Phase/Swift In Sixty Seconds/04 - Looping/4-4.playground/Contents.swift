import UIKit

// Exiting Loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm board. Let's go now!")
        break
    }
    
    countDown -= 1
}
