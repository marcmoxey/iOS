import Cocoa


// How to limit access to internal data using access control
    // priivate - don't let anything outside the struct
    // fileprivate - don/t let anything outside the current
    // public - let anyone, anywhere use this
    // private(set) - anyone read this prop; but only let interal methods write it


struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//account.funds -= 1000
