import Cocoa

let team = ["Gloria", "Maria", "Jane", "Alba", "John"]

//Since sorted already expect two strings and to return a bool, we can do it as followes

//swift has something call trailing closure syntax that lets you remove the opening and closing () as well as the argument name
//When it comes to shorthand syntax, we can remove the parameters and the in keyword and use $0, $1, and so on... First parameter will always be $0
let captainFirstTeam = team.sorted{
    if $0 == "Maria"{
        return true
    } else if $1 == "Maria"{
        return false
    }
    
    return $0 < $1
}

//reversing with sorting and closure
let reverseTeam = team.sorted { $0 > $1}


//Filter is a function on arrays that filters the items. It goes item by item and filters depending on the condition
let jOnly = team.filter{$0.hasPrefix("J")}
print(jOnly)

//map is a function on arrays that take every item one by one and transform it based on the condition, map returns a new array
let uppercaseTeam = team.map{$0.uppercased()}
print(uppercaseTeam)
