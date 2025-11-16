import Cocoa


// Lazy Propertioes

struct FamilyTree {
    init() {
        print("Creating family treeQ")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree() // only create the family tree strcut when it first access
    
    init(name:String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.familyTree
