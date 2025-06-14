import Cocoa

//static makes sure the property and function where is used belongs to the struct, not to the specific instance
//It can be called with the struct name directly
//You can accessed a non-static property or function from a static one
//But can do it backwards, you can access a static function or property from a non static one
//self - The current value of a struct
//Self - The current type of struct

struct School{
    static var studentCount = 0
    
    static func addStudent(student: String){
        print("\(student) added to the school")
        studentCount += 1
    }
}

School.addStudent(student: "John")
print(School.studentCount)

struct AppData{
    static let version = "1.0"
    static let saveFileName = "savedData.json"
    static let homeURL = "https://www.google.com"
}
