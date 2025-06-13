import Cocoa

//We have properties observers
//didSet - This will be used automaticaly be triggered when the value attached to it changes, so it will have as current value the value after it was changed and access to the old value before changes
//Swift also has willSet- This will be used automaticaly be triggered when the value attached to it changes, the difference is that here you have access to the current as the value before changed and the new value as it will be after changing as newValue keyword
struct Game{
    var score = 0{
        
        didSet{
            print("Score is now \(score)")
        }
    }
}

var game = Game()

print(game.score = 10)
print(game.score += 15)

struct App{
    var contacts = [String](){
        willSet{
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Alice")
app.contacts.append("Bob")
