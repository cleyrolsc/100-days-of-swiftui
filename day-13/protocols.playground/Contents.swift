import Cocoa

//Protocols are like contracts for swift code, let us define what kind of functionality or properties we expect our types to support
//We addopt the protocols, similar to inheritance with classes
//All methods in our protocol must be implmeneted in whichever type is using it

protocol Vehicle{
    var name: String {get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle{
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int{
        distance / 50
    }
    
    func travel(distance: Int){
        print("I'm driving \(distance)km")
    }
    
    func openSunRoof(){
        print("It's a nice day!")
    }
}

struct Bicycle:Vehicle{
    let name = "Bike"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 100
    }
     
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}
func commute(distance:Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance) > 100{
        print("That's to slow! I'll try a different vehicle")
    } else{
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimate(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 20, using: bike)
print(bike.name)
getTravelEstimate(using: [car, bike], distance: 150)
