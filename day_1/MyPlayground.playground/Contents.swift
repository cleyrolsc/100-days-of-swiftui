import Cocoa

// Creating variables

//Use var for variables and let for constant

var greeting = "Hello, playground"
greeting = "Hello, Cleyrol"

let name = "Jenniffer"
print(greeting + ", " + name + "!")

let lastName = "Santana"
print("My last name is \(lastName)")

//Strings

//declared with "" double quotes
//Multiline strings are declared with triple double quotes """"""
// Methods of strings to start with are count, uppercased(), hasPrefix({prefix string}, hasSuffix({suffix string)

var myString = "Hello "

var text = """
    hello
    text
    from
    swift
    """

print(myString.count)

print(myString.hasPrefix("He"))
print(myString.hasSuffix("oo"))

//Integer numbers
//range of numbers  is past quantillions
//underscore _ can be used as a thousand separator for better reading, swift ignores the _

//method of integer to start of is isMultiple(of: {int})

var counter = 10
counter *= 2
counter += 100
print(counter.isMultiple(of: 3))

//Floating point numbers (double) double comes from double presicion
let number = 0.1 + 0.2
print(number)

//You can also mix doubles and ints if using casting Double to cast to double and Int to cast to int
let num1 = 10
let num2 = 10.0
let result = num1 + Int(num2)
print(result)
