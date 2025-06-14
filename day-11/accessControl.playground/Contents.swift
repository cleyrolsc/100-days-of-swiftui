import Cocoa

//by declaring properties as private, we limit our internal nformation to be accessed from outside the struct
//Private, when nothing outside the struct uses it
//fileprivate for the current file to be able to use it
//public, let anywhere use this
//private(set) - let anyone read the property, but only let my internal methods write it


struct BankAccount{
    private var  funds = 0.0
    
    mutating func deposit(_ amount: Double){
        funds += amount
    }
    
    mutating func withdraw(_ amount: Double) -> Bool{
        if funds < amount{
            return false
        } else{
            funds -= amount
            return true;
        }
            }
}

var popular = BankAccount()
popular.deposit(600)

