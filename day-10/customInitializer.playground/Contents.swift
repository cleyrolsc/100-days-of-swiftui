import Cocoa

//Initializer are special functions inside the structs, design to create initial values for all the properties inside the struct
//to have custom initilizer we must ensure every property inside the struct has an initial value by the time the initializer finisher

struct Player {
    let name: String
    let number: Int
    
    //There is no func keyword to start initializer
    //There is no explicit return type, it always return the type of data that it belongs to, the struct in which is defined
    //Self is used to assign values to make sure you are assigning the parameter to the property
    init(name: String){
        self.name = name
        number = Int.random(in: 1...50)
    }
}

//The moment we use custom initializer, we lose swift init inizialiter
let player = Player(name: "Cleyrol")
print(player.number)
