import Cocoa

//Enums can be used if we have a limited set of distinct choices for a certain concept. Instead of representing these choices with arbitrary numbers or strings (which can be error-prone and hard to read), enums give us a way to define them as specific, named cases.
//For example, a menu with fixed options, days of the week, months of the year

enum WeekDays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

//it can also be declared with a shortcut for cases like the ones above

enum WeekDays2 {
    case monday, tuesday, wednesday, thursday, friday
}


var day = WeekDays.monday
day = WeekDays.wednesday
day = .tuesday //This is a shortcut since day is already an enum, it knows that whatever values under that enum are the only options to pick from


    
