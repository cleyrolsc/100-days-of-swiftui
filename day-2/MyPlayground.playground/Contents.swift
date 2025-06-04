import Cocoa

//Booleans

//Booleans are either true or false values
//they can be switch with !, if false it would make it through, if true it would make it false
//Also, there is a functionality to do the same operation, it is called toogle()

let greatYear = true
var gameOver  = false
print(gameOver)
gameOver.toggle( )
print(gameOver)
gameOver = !gameOver
print(gameOver)

//you can also get a boolean based on other code, as long as the result is true or false
let isMultiple = 120.isMultiple(of:30)
print(isMultiple)

//Join strings together

//Strings with +
//Anytime a + is used, swift concatenates two strings at a time, for instance 1 + 2 + 3 + 4, first will be 1 and 2, then 12 and 3, then 123 and 4, which takes time in case of a big concatenation


let hello = "Hello, "
let world = "World"
let helloWorld = hello + world
print(helloWorld)

//String interpolation
//Way more efficient and easier to read than using the plus sign
//It also allows you to mix strings and numbers, whereas with + sign, you will need to type cast the number in to a string for instance, String(num1) + "good"
//Lasly, you can also do calculations inside string interpolation such as \(5 * 5)

let name = "Cleyrol"
let age = 32
let message = "Hello my name is \(name) and I am \(age) years old"


