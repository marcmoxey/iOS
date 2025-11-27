import Cocoa

// make a protocol that describes a building, adding various properties and ,methods
// then create two structs, House and Office, that conform to it
// Your protocol should require the following
    // A proerty storing how many rooms its has
    // A property storing the cost as an interger
    // A property storing the name of estate agent reposible for selling the building
    // A method for printing the sales summary of the building, describing what it is along with it other propertes


protocol Building {
    var rooms: Int { get }
    var price: Int { get set}
    var estateAgent: String { get }
    
    func printSalesSummary()
    
    
}


struct House: Building {
    let rooms = 6
    var price = 750_000
    let estateAgent = "Kenneth Moxey"
    
    func printSalesSummary() {
        print("This house has \(rooms) rooms listed price is $\(price) and the seller agent is \(estateAgent)")
    }
}


struct Office: Building {
    let rooms = 4
    var price = 1_500_000
    let estateAgent = "Kenneth Moxey"
    
    func printSalesSummary() {
        print(
            "This office has \(rooms) rooms, listed for $\(price) and the seller agent is \(estateAgent)"
        )
    }
}


let house = House()
house.printSalesSummary()

let office = Office()
office.printSalesSummary()
