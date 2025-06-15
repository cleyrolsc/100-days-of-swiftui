import Cocoa

//if a child class has any custom initializer, has to always call the parents initializer after finishing calling all his properties if it has anything
//Using self in the initializer is required to identify what is the parameters vs the class property
//We can call the parents property with super.init()
//If a child class does not have its own initializer, then it can inherite the one from its parent


class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertive: Bool
    
    init(isElectrict: Bool, isConvertive: Bool) {
        self.isConvertive = isConvertive
        super.init(isElectric: isElectrict)
    }
}

let teslaX = Car(isElectrict: true, isConvertive: false)
