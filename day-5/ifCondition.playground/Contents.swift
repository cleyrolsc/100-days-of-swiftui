import Cocoa

import Cocoa

//Use if statement to check if a condition is true or false, as long as it is true, the code within the curly braces will be ran, otherwise it will not be done
//You can write nested if statemenes, and their code within their respecitive curly brace will be ran as long as the condition is true
//There could be multiple ifs even if not nested, in that case, they will all be ran and if true, code in curly braces will be ran as well
//Parenthesis are not needed in the conditions in swift

let score = 85

if score >= 90 {
    print("Great Job")
}

let speed = 88
let percentage = 85
let age = 28

if speed >= 88{
    print("Where we are going, we dont need roads")
}

if percentage < 85{
    print("Sorry, you failed the test")
}

if age >= 18{
    print("You are eligible to vote")
}
