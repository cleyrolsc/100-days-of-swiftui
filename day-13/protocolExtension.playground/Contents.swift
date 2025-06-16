import Cocoa

extension Collection {
    var isNotEmpty: Bool {
        return !isEmpty
    }
}

let guests = ["Mario"," Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person{
    var name: String {get}
    func sayHello()
}

extension Person{
    func sayHello(){
        print("Hello, I am \(name)")
    }
}

struct Employee: Person{
    let name: String
}

let cleyrol = Employee(name: "Cleyrol S")
print(cleyrol.sayHello())
