import Cocoa

//Any kind of data can be optional
//
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

//For unwarraping an optional, we have three options.
//if let, guard let, nil
//using if and constant, which swift will read and only run the code if the option had a value inside
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = "Cleyrol"

if let unWrappedUsername = username {
    print("Hello \(unWrappedUsername)!")
} else {
    print("Hello, world!")
}

//We can't use an optional type where a non-optional type is expected. We have to unwrap it first
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unWrappedNumber = number {
    print(square(number: unWrappedNumber))
} else{
    print("There wasn't any numbers found")
}

//It is common to use the same name for the unwrap constant as the optional name, technique called shadowing, since the constant will only live within the if scope
if let number = number{
    print(square(number: number))
}
