import Cocoa

//Dictionaries are key-value pairs which helps to identify what the value belongs to
//they can be declared in differents ways such as the array
//key and values can be of various types, but once declare we gotta stick to those two
//We can use the defaul param when
//When accessing the value, the system will tell you that the value could be String? to optional, since the key may exists or not. If it does not exists, swift gives you an option to provide a value by using default:
//ex: print(myDict["name", default: {value}])
//You can just not use the defaul value and leave it as its, depending on needs
//Dictionaries also have funcionalities such as count and removeAll() same as arrays

var employee = [
    "name": "Cleyrol Santana",
    "job": "developer",
    "location": "dominican republic"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

var myDict2 = Dictionary<String, Int>()

myDict2["a"] = 1
myDict2["b"] = 2
myDict2["c"] = 3

var myDict3 = [Int: String]()
myDict3[1] = "a"
myDict3[2] = "b"

print(myDict3[2, default: "Unknown"])

myDict3.count
employee.removeAll()
