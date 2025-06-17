import Cocoa

//Write a function that accept an optional array of integers, and returns one of those integers randomly
//If the array os missing or empty, return a new random number in the range 1 through 100
//write your function in a single line of code

func randomNumber(from array: [Int]?) -> Int {
    guard let array = array else {
        return Int.random(in: 1...100)
    }
    return array.isEmpty ? Int.random(in: 1...100) : array.randomElement() ?? Int.random(in: 1...100)
}
