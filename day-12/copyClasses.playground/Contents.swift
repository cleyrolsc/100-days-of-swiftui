import Cocoa

//Classes are called reference types
//class instances always point to the same piece of data

class User{
    var username = "Anonymous"
    
    func copy() -> User{
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1

user1.username = "dabeer"

print(user1.username) 
print(user2.username) 

