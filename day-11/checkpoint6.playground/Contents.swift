import Cocoa

//Create a struct to store information about a car. Include:
//model, number of seats, current gear

//Add a method to change gears up or down
//have a think about variables and access control
//Dont allow gears outside of range of 1...10

struct Car{
    static let model: String = "Toyota Corolla"
    static let numberOfSeats = 4
    private var currentGear: Int{
        didSet{
            print("Changing current gear to \(currentGear)")
        }
    }
    
    mutating func changeGear(_ direction: String){
        if direction == "up" && currentGear < 10{
            currentGear += 1
        } else if direction == "up" && currentGear >= 10{
            print("Staying in gear \(currentGear), Can't go above!")
        }
        
        
        if direction == "down" && currentGear > 1{
            currentGear -= 1
        } else if direction == "down" && currentGear <= 1{
            print("Staying in gear \(currentGear), Can't go below!")
        }
    }
    
    init(currentGear: Int = 1) {
        self.currentGear = currentGear
    }
}

var car = Car()
car.changeGear("up")
car.changeGear("down")
car.changeGear("down")
