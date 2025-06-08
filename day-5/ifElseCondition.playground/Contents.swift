import Cocoa

//For checking multiple conditions we can use either if/else or if/else if/ else (optional)

let age = 16

if age >= 18
{
    print("You are able to drink")
} else{
    print("You ar enot able to drink")
}

if age > 18
{
    print("You are able to drink all type of alcohol")
} else if age < 18{
    print("You are enot able to drink")
} else {
    print("You are 18, you can drink only beer")
}

