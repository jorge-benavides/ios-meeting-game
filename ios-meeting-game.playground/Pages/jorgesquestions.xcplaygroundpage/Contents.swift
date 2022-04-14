
import Foundation

// be the compiler

let i: Int = 101

if case 100...101 = i {
    print("Hello, world!")
}

// Q will it print?
// A true

// 2
func greet(_ name: String = "Anonymous") {
    print("Hello, \(name)!")
}

let greetCopy = greet
greetCopy("Dave")

// Q will it print "Hello, Dave!"?
// A true

// 3
enum Planet: Int {
    case Mercury = 1
    case Venus
    case Earth
}

let test = Planet(rawValue: 2)

// Q is the test Type "Plante"?
// A false

// 4
func foo(_ number: Int) -> Int {
    func bar(_ number: Int) -> Int {
        return number * 5
    }

    return number * bar(3)
}

let output = foo(2)

// Q is the ouput 20?
// A false

// 5
let numbers = [1, 3, 5, 7, 9]
let result = numbers.reduce(0, +)

// Q is result value = 25?
// A false

// 6
struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    var name: String
}

let jamesSong = TaylorFan(name: "James").favoriteSong

// Q is jamesSong favorite song "Shake it Off"?
// A false
