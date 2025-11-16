import Cocoa


// Protocol Inheritance


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTrainig {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTrainig, HasVacation {
    
}
