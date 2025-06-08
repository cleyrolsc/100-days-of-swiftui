import Cocoa


//Fizzbuzz
//Loop from 1 through 100, and for each number
//if is a multiple of 3, print "Fizz"
//if is a multiple of 5, print "Buzz"
//if is a multiple of 5 and 3, print "FizzBuzz"

for i in 1...100{
    if i.isMultiple(of: 5) && i.isMultiple(of: 3){
        print("FizzBuzz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else{
        print(i)
    }
}
