import Cocoa

//To return values, we use the syntax func functionName() -> Type to return{}
//We use the return keyword to return the value that we set up in the function definition
//If there is only one expression, return keyword is not necessary
let root = sqrt(34)
print(root)

func rollDice() -> Int{
    return Int.random(in: 1...6)
}

//Do two strings contain the same letters, regardless of their order?
//This function should:
//Accept two string parameters
//Return true if their letters are the same


func checkAnagrams(string1: String, string2: String) -> Bool {
    string1.lowercased().sorted() == string2.lowercased().sorted()
}
print(checkAnagrams(string1: "Hello", string2: "heLlo5"))

func pythagoras(a: Double, b: Double) -> Double{
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)
