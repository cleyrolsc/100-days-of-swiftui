import Cocoa


//Opaque return type let us hide some information in our code
//We might want to obtain some flexibility in the future
//View Use for anything use to appear in the screen
protocol View{}
func getRandomNumber() -> some Equatable{
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable{
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())
