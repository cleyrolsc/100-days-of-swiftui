import Cocoa

//Functions are a block of code that can be reuse as needed
//It is created with the keyword func
//the name can be anything, but it is important to make it meaninfull
//after the name, we use (){}
//Within the {} is where the block of code within the function goes

func sayHello() -> String {
    return "Hello, World!"
}

//To call the function we just put the name of the function plus () like sayHello()
//Within the parenthesis, we can add parameters

//When calling the function, we have to use named arguments, otherwise swift will advise that we need to label it,and we must call it in the same order as the function definition
func printTimesTable(number: Int ){ //This is called parameter (placeholder)
    for i in 1...12{
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(number: 5 )//This is called arguments (Actual value)
