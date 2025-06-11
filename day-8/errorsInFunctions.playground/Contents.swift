import Cocoa

//1 - Define all the errors that might happen in the code we are writing
//2 - Write a function that works as normal, but control one or more of those errors if a serious problem is found
//3 - Try and run that function and handle any errors that come back

enum PasswordError: Error {
    case short, obvious
}

//if a function is able to throw errors, we need to use the keyword throws before the return type
func checkPassword(_ password: String) throws -> String {
    if password.count < 5{
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10{
        return "Good"
    } else {
        return "Excellent"
    }
     
}

let string = "durisimo"

//Start a block of code with do, call one or more functions that throw errors using the keyword try, then catch if any errors were found
//Try lets you know that regular code execution might stop there
//try! means tht it does not requires do nor catch, what you are saying that the function will not throw any error, which will craash the system if it does have errors
//You can do as many catch as needed based on the error and what you want to show as a result
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch{
    print("There was an error.")
}
