import Cocoa

//Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array

var names:[String] = ["Alice", "Bob", "Charlie", "Alice", "Bob"]

print("The amount items on the array is \(names.count)")

var uniqueNames:Set<String> = Set(names)

print("The amount items on the array is \(uniqueNames.count)")


