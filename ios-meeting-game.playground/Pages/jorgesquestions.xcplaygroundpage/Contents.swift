
import Foundation

// be the compiler

let i = 101

if case 100...101 = i {
    print("Hello, world!")
} else {
    print("Goodbye, world!")
}

// 2
func greet(_ name: String = "Anonymous") {
    print("Hello, \(name)!")
}

let greetCopy = greet
greetCopy("Dave")

//
enum Planet: Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
}

let test = Planet(rawValue: 3)

func foo(_ number: Int) -> Int {
    func bar(_ number: Int) -> Int {
        return number * 5
    }

    return number * bar(3)
}

print(foo(2))

// Once this code is executed, what value will result hold?
let numbers = [1, 3, 5, 7, 9]
let result = numbers.reduce(0, +)

struct Spaceship {
    fileprivate(set) var name = "Serenity"
}

var serenity = Spaceship()
serenity.name = "Jayne's Chariot"
print(serenity.name)


// What output will be produced by the code below?

struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
// print(fan.favoriteSong)
