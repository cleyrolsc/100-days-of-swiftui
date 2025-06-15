import Cocoa

//We can inherit all methods and properties from the parent class by using inheritance
//If a child class wants to change a method inherited from the parent, we need to use the override keyword
//If you want your class not to be inherited from anything else, we can use final keyword

class Employee{
    let hours: Int
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
    
}

final class Developer : Employee{
    func work(){
        print("I'm wiring code for \(hours) hours!")
    }
    
    override func printSummary() {
        print("I'm a developer who does a lot of code every day, Love all kind of languages")
    }
}

class Manager : Employee {
    func work(){
        print("Im going to meetings for \(hours) hours")
    }
}


let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
robert.printSummary()
