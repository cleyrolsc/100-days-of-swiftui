import Cocoa

//closures are functions that we can create, and assign directly to a variable, or pass into other functions to customize how they work
//When calling the closure, there is no parameter name or when copy an actual function
//There are only use when calling a function directly

func greetUser(){
    print("Hi There!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

//We can use parameters and return types in closures. However, they must be within the curly braces and followed by the keyword in, then the body of the closure (block of code to execute)
let sayHello = { (name: String) -> String in
        "Hi \(name)"
}

sayHello("Cleyrol")

func getUserData(for id: Int) -> String{
    if id == 1989 {
        return "Taylor Swift"
    } else{
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)

let team = ["Gloria", "Maria", "Jane", "Alba", "John"]
let sortedTeam = team.sorted()
print(sortedTeam)

//We can pass func/closures to other functions to change their behavior as we might want
func captainFirstSorted(name1: String, name2: String) -> Bool{
    if name1 == "Maria"{
        return true
    } else if name2 == "Maria"{
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: {(name1:String, name2:String) -> Bool in
    if name1 == "Maria"{
        return true
    } else if name2 == "Maria"{
        return false
    }
    
    return name1 < name2
})
