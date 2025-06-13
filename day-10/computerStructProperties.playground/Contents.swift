import Cocoa

struct Employee{
    let name:String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    //a computed property is effectively just a function call that happens to belong to your struct.
    var vacationRemaining: Int {
        //Computed properly has get and set, to get and set the values respectevily.
        
        //In the set portion we have a special keyword provided by swift which is newValue, this will be whatever value we set our computer property to be, then we can use it as we please
        get{
            vacationAllocated - vacationTaken}
        
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }}


var cleyrol = Employee(name: "Cleyrol", vacationAllocated: 14)
cleyrol.vacationTaken += 7
cleyrol.vacationRemaining = 6
print(cleyrol.vacationAllocated)
