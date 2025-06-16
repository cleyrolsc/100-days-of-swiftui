import Cocoa

//Make a protocol that describes a building
//Your protocol should require the following:
//A property storing how many room it has
//A property storing the cost as an integer
//A property storing the name state agent selling the building
//A method for printing the sales summary of the building
//Create two structs, House and Office, that conform to it

protocol Building {
    var numRooms: Int { get }
    var cost: Int { get }
    var sellingAgent: String { get }
    func printSalesSummary()
}

struct House: Building {
    var numRooms: Int
    var cost: Int
    var sellingAgent: String
    
    func printSalesSummary() {
        print("House sold for \(cost) with \(numRooms) rooms. Sold by \(sellingAgent)")
    }
}

struct Office: Building {
    var numRooms: Int
    var cost: Int
    var sellingAgent: String
    func printSalesSummary() {
        print("Office sold for \(cost) with \(numRooms) rooms. Sold by \(sellingAgent)")
    }
}

var house = House(numRooms: 4, cost: 4000, sellingAgent: "Juan")
var office = Office(numRooms: 8, cost: 9000, sellingAgent: "Cleyrol")
house.printSalesSummary()
office.printSalesSummary()
