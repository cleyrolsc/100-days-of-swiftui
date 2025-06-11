import Cocoa

//We can set up default values in our function definitions as needed when we want to have a fixed value for our parameter if none if provided

func printTimesTable(for number: Int, end: Int = 12){
    for i in 1...end{
        print("\(i) X \(number) = \(i*number)")
    }
}

printTimesTable(for: 5, end: 7)
printTimesTable(for: 7)

//Swift uses default values as well, for instance the removeAll() function has a keepingCapacity parameter set to false, but if needed we can set it up to true, so when removing items, swift still saves that space in memory
var characters = ["Lebron", "Kobe", "Steph"]
print(characters.count)
characters.removeAll()
print(characters.count)
