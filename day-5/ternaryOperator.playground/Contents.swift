import Cocoa


//Ternary operator gets its name because it has three pieces of inputs
//it checks a condition (returns true or false), and send back either one value or the other depends on that first condition

let age = 10
let canVote = age >= 18 ? true : false

let hour = 23
print(hour < 12 ? "Good morning" : "Good night")

let names = ["Alice", "Bob", "Charlie"]
let crewCount = names.isEmpty ? "No one there" : "\(names.count) crew members on board)"

enum Theme{
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"

