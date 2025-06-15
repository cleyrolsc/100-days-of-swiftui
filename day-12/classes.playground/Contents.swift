import Cocoa

//Classes and structs are similar, the main different is inheritance, since we dont have that in structs
//Swift will not automatically generate a memberwise initializer for classes
//If you copy an instance of a class, both copies share the same data
//We can add a deinitilizer to run when the final copy is destroyed (There is no variable pointing to the object)
//If class instances are constant, we can change its properties, as long as they are declared as variables

class Game{
    var score = 0{
        didSet{
            print("Score is now\(score)")
        }
    }
}

var newGame = Game()
newGame.score += 100


