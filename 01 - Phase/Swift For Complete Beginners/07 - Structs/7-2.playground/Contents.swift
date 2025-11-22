import Cocoa

// How to compute property values dynamically

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vactionTaken = 0
    
    var vactionRemaining: Int {
        get {
            vacationAllocated - vactionTaken
        }
        set {
            vacationAllocated = vactionTaken + newValue
        }
    }
        
}


var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vactionTaken += 4
archer.vactionRemaining = 5
print(archer.vacationAllocated)


