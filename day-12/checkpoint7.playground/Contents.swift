import Cocoa

//Make a class hierarchy for animals
//Start with Animal, Add a legs property for the number of legs an animal has
class Animal{
    var legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

//Make Dog a subclass of Animal, giving it a speak() method that prints a dog barking string, but each subclass should print something different
class Dog: Animal{
    
    func speak(){
        print("Woof Parent!")
    }

}
//Make Corgi and Poodle subclasses of Dog

class Corgi: Dog{
    override func speak(){
        print("Yip Yip from Cargi!")
    }
}

class Poodle: Dog{
    override func speak(){
        print("Wag Wag from Poodle!")
    }
}

var animal = Animal(legs: 4)
var dog: Dog = Dog(legs: 4)
var corgi: Corgi = Corgi(legs: 4)
var poodle: Poodle = Poodle(legs: 4)

dog.speak( )
corgi.speak()
poodle.speak()
//Make Cat an Animal subclass. Add a speak() method, with each subclass printing something different, and an isTame Boolean, set with an initializer
class Cat: Animal {
    var isTame: Bool
    func speak(){
        print("Meow from parent!")
    }
    
    init(legs:Int, isTame: Bool) {
        
        self.isTame = isTame
        super.init(legs: 4)
    }
}
//Make Persian and Lion as subclasses of Cat
class Persian: Cat{
    
    override func speak() {
        print("Meeeoooooww from Persian!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Meow Meow from Lion!")
    }
}

var cat = Cat(legs: 4, isTame: false)
var lion = Lion(legs: 4, isTame: true)
var persian = Persian(legs: 4, isTame: false)

cat.speak()
lion.speak()
persian.speak()
