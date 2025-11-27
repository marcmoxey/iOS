import Cocoa


// How to work with variables inside classess
    // Const class, const property - Signpost always points to the same user, who always has the same name
    // Const class, variable property - Signpost that always points to the same user, but their name can change
    // Variable class, constant property - Signpost that can point to differnt users, but their names never change
    // Variable class, variable property - Signpost that can point to differnt users, and those users can also change their names

class User {
    var name = "Paul"
}


//let user = User()
var user = User()
user.name = "Taylor"
user = User() // wouldnt work if user was a const
print(user.name)
