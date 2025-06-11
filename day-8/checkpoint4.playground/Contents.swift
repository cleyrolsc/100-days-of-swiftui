import Cocoa

enum ErrorMessage: Error {
    case outOfBounds, noRoot
}

//Write a function that accepts an integer from 1 through 10,000 and returns the integer square root of that number
//You should only consider integer square roots
func mySqrt(_ num: Int) throws -> Int {
    
    //if the number is less than 1 or greater than 10,000 you should throw an "out of bounds" error
    if num < 1 || num > 10_000 {
        throw ErrorMessage.outOfBounds
    }
    
    //You can't use the built-in sqrt() function or similar - you need to find the square root yourself
    for i in 1...100 {
        if i * i == num {
            return i
        } else if i * i > num{
            break
        }
    }
    
    //If you can't find the square root, throw a "no root" error
    throw ErrorMessage.noRoot
}

do{
    try mySqrt(35)
} catch ErrorMessage.outOfBounds{
    print("Out of bounds")
} catch ErrorMessage.noRoot{
    "No root"
}
