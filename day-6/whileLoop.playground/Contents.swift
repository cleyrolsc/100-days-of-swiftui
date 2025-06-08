import Cocoa

//When we don't know how many times our loop will iterate, is better to use while loops
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
}

print("Blast off!")

//We can also use random numbers for double and int
//Int.random(in: {range needed}
//Double.random(in: {range needed}

var roll = 0

while roll != 10{
    roll = Int.random(in: 1...10)
    print("I rolled a \(roll)")
}

print("Critical hit")
