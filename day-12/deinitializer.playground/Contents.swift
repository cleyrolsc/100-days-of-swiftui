import Cocoa

//we dont use func with deinitializers
//deinitializers can never take parameters or return data
//deinitializers run when the last copy of a class instance is destroyed
//we never call deinitializer directly
//structs don't have deinitializers, because they do not get copy by reference


class User{
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I am alive")
    }
    
    deinit{
        print("User \(id): I'm dead!")
    }
}


for i in 1...3{
    let user = User(id: i)
    print("User \(user.id): I'm in control")
}
