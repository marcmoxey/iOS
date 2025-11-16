import Cocoa


// overriding Methods

class Dog {
    func makeNoise(){
        print("Woof!")
    }
}

class Poodle: Dog {
    override func makeNoise() {
        print("Bark!")
    }
}

let poppy = Poodle()
poppy.makeNoise()
