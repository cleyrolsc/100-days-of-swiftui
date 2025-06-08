import Cocoa

//For loops are used to repeat the same block of code an specific amount of times based on the code

let platforms = ["MacOS", "iOS", "tvOS", "watchOS"]

//We use the keyword for followed by the loop variable which in this case is platform but can be anything, swift will create a constant with that name and can be used within the loop body. Lastly we use the collection we want to go over, in this case platforms
//In case that a loop variable is not needed, we can use _ so we know that the item is not been used

for platform in platforms {
    print("Hello, \(platform) is the best Apple platform!")
}

//There are two types of range, the one numer to number and number through number.
//First range is up to a number but not including it, second one would be up to and including such a number
//The i variable is usually used for number convention for what you are counting with, if first number (one loop) use i, for second number (nested loop) use j, etc...

for i in 1..<5 {
    print("Number from 1 up to but not including 5")
}

for i in 1...5{
    print("Number from 1 up to and including 5")
}

//Nested loop below
for i in 1...12{
    print("The \(i) table")
    for j in 1...12{
        print("\(i) * \(j) \(i * j)")
    }
}

//Lastly, you could use for i in 3... to run from one specific item in the array up until the end
let teams = ["Lakers", "Warriors", "Celtics", "Nets", "Raptors"]
print(teams[2...])
