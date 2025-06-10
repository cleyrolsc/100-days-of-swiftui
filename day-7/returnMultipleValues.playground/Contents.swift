import Cocoa


//Tuples - Let us put multiple values inside, but has a fix size
//Usually used to return multiple values since swift knows the values are present

func getUser() -> (firstName: String, lastName: String){
    (firstName: "Cleyrol", lastName: "Santana")
}

//Can use this way since swift already know what are the keys and values for the tuple
func getUser2() -> (firstName: String, lastName: String){
    ( "Cleyrol", "Santana")
}

let user = getUser()
print("Full Name: \(user.firstName) \(user.lastName)")

let user2 = getUser2()
print("Full Name: \(user2.firstName) \(user2.lastName)")

//if a function returns a tuple, we can get the individual values, meaning assign them to specific constants or variables

let user3 = getUser2()
let firstName = user3.firstName
let lastName = user3.lastName
print(firstName, lastName)

//We can also use destructuring with the tuple as follows
let (firstName2, lastName2) = getUser2()
