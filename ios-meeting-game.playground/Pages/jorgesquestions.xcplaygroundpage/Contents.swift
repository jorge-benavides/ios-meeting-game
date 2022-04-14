
import Foundation

// # New Features

// ### Existential types
// An existential type is a type that can hold a value of any type conforming to a specific protocol.
// The `any` keyword creates a syntactic distinction between existential types and protocol conformance constraints.
// The `any` keyword is an important syntactic indicator that you’re using an existential type,
// because there are fundamental limitations on the capabilities of these types, such as the inability to conform to protocols. For example:

protocol P {
    var greetings: String { get }
}

// generic syntax
func generic<T: P>(value: T) -> T {
    print(value.greetings)
    return value
}

// existential syntax
func existential(value: any P) -> any P {
    print(value.greetings)
    return value
}

struct S: P {
    let greetings: String = "hello world!"
}

var s = S()

s = generic(value: s)
// s = existential(value: s)

// ### Type placeholders
// You can now include type placeholders in type expressions and annotations.
// Type placeholders direct the compiler to set the type for that position according to the usual type inference rules.
// To use a type placeholder, enter an underscore (”_”) instead of the type name. For example:

/// This is OK--the compiler can infer the key type as `Int`.
var dict: [_: String] = [0: "zero", 1: "one", 2: "two"]
dict[3] = "three"

/// Infered values are optional by default. In this case `Int?`.
var hashmap: [String: _] = ["zero": 0]
hashmap["one"] = nil


// Inverted availability keyworkd
// You can now write inverted availability conditions using the new #unavailable keyword. For example:

if #unavailable(iOS 15.0) {
    // Old functionality
} else {
    // iOS 15 functionality
}



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
