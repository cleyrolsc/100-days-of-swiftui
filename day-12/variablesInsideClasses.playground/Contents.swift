import Cocoa

class User{
    var name = "Paul"
}

var user = User()
user.name = "John"
print(user.name)
user = User()
print(user.name)

