import Cocoa

//Guard let is a second way to unwrap an option
//it checks if we can unwrap the option, but if it can't then it simply runs the else block
//Swift will always require to return (exit) the function if the check fails when using guard
//If the check passes, the variable is available after the guard scope

func printSquare(of number: Int?){
    guard let number = number else{
        print("Missing input")
        return
    }
    
    print("\(number) * \(number) is equal to \(number * number)")
}

printSquare(of: nil)
