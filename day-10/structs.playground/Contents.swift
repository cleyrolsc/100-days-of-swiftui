import Cocoa

//Structs create a new type such as Int, String, etc.. with name provided
//Its naming convention is CamelCase
//struct instance is contact, therefore its properties are constants too
//To change data with a func within the struct, we need to declare it as mutating funct
//if using let when creating an instance of the struct, then it can't be mutated
//Variables and constants inside a struct are called properties
//functions inside structs are called methods
struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

struct Employee{
    let name:String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int){
        if days > vacationRemaining{
            print("Not enough vacation days remaining")
        }else{
            vacationRemaining -= days
            print("Vacation taken. There are \(vacationRemaining) days remaining")
        }
    }
}

//This is called an instance of the struct
//After the equal sign is the initializer of the struct
var cleyrol = Employee(name: "Cleyrol", vacationRemaining: 20)
cleyrol.takeVacation(days: 4)
