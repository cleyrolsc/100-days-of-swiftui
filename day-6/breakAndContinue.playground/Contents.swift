import Cocoa

//continue is used to skip the current iteration of the loop and continue with the next one if any
//break is used to stop the loop

//continue example
let filenames = ["a.jpg", "b.txt", "c.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false{
        continue
    }
    print("Found picture \(filename)")
}

//break example

let num1 = 4
let num2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: num1) && i.isMultiple(of: num2){
        multiples.append(i)
    }
    
    if multiples.count == 10{
        break
    }
}

print(multiples)

//To break all loops at once we can use label, we label the most outer loop and then break that one

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "down, right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}
