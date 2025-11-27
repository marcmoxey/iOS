import Cocoa


// Make a class hierarchy for animals
// start with Animal. Add a legs property for the number of legs an animal has
// Make Dog subclass of animal, giving it a speak() method that prints a dog
    // barking string but each subclass should print something different
// Make Corgi and Poodle subclass. Add a speak() method with each subclass
// Make Cat an Animal subclass. Add a speak() method, with each subclass
    // print something differnt, and an isTame Boolean, set with initalizer
// Make Persian and Loin as subclasses of Cat

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof Woof")
    }
}
class Corgi : Dog {
    
    override func speak() {
         print("bark bark")
    }
}


class Poodle : Dog {
    
    override func speak() {
        print("yip yip")
    }
}

class Cat: Animal {
    var isTame: Bool
     
    init(isTame:Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow meow")
    }
}


class Lion: Cat {
 
    override func speak() {
        print("Rwarrrr")
    }
}


class Persian: Cat {
    override func speak() {
        print("purrrrr")
    }
}


let corgi = Corgi(legs: 4)
corgi.speak()

let poddle = Poodle(legs: 4)
poddle.speak()

let lion = Lion(isTame: false, legs: 4)
lion.speak()

let persian = Persian(isTame: true, legs: 4)
persian.speak()
