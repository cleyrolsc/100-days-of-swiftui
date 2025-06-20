import Cocoa

func makeArray(size: Int, using generator: () -> Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 5){
    Int.random(in: 0...20)
}

print(rolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void){
    print("About to start first work...")
    first()
    print("About to start second work...")
    second()
    print("About to start third word...")
    third()
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the thir work")
}
