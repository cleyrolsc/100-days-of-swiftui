import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//Filter out any numbers that are even
//Sort the array in ascending order
//Map them to strings in the format "7 is a lucky number"
//print the resulting array, one item per line
let processedLuckyNumbers = luckyNumbers.filter{ $0 % 2 != 0 }.sorted().map{ "\($0) is a lucky number" }

for i in luckyNumbers{
    print("\(i) is a lucky number")
}

