import Cocoa

//we can have functions that when we call them, we dont have to use the argument names


func isUppercase(_ string: String) -> Bool{
    string == string.uppercased()
}

let greeting = "Hello World"
let result = isUppercase(greeting)

//We can also have labels within the function definition by providing an argument label and a parameter name, that way way can use the argument label when calling the function, and the parameter just inside the function
func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) X \(number) = \(i * number)")
    }
}

printTimesTable(for: 9)
