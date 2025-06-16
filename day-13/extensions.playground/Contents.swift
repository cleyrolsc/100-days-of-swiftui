import Cocoa

//Extensions let us add functionality to any type

var quote = " The trurth is rarely pure and never simple "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String{
    func trimmed() -> String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim(){
        self = self.trimmed()
    }
    
    var lines: [String]{
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()
