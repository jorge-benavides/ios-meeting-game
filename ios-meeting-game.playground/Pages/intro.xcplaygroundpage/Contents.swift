import UIKit

// Game title: Be the compiler

// Read the code in the snip and determine:

// A) True
// B) False
// C) Won't compile
// D) Compile but crash

// 1
class Color {
    var alpha: Float = 1
}

var color = Color()
var colorCopy = color

colorCopy.alpha = 0.5

print(color.alpha)

// Q view1.alpha will print 0.5?
// A True

//2
struct Tutorial {
  var difficulty: Int = 1
}

var tutorial = Tutorial()
var tutorialCopy = tutorial

tutorialCopy.difficulty = 2

print(tutorial.difficulty)

// Q tutorial.difficulty will print 2?
// A False

// 3
var thing = "cars"

var closure = { [thing] in
    print("I love \(thing)")
}

thing = "airplanes"

closure()

// Q What will this code print? "I love airplanes"
// A False

// 4
let i: Int = 101

if case 100...101 = i {
    print("Hello, world!")
}

// Q will it print?
// A True

// 5
func greet(_ name: String = "Anonymous") {
    print("Hello, \(name)!")
}

let greetCopy = greet
greetCopy("Dave")

// Q will it print "Hello, Dave!"?
// A True

// 6
enum Planet: Int {
    case Mercury
    case Venus
    case Earth
}

let planet: Planet = Planet(rawValue: 3)!
print(planet)

// Q what is the name of the planet property?
// A Compile but crash

// 7
func foo(_ number: Int) -> Int {
    func bar(_ number: Int) -> Int {
        return number * 5
    }

    return number * bar(3)
}

let output = foo(2)

// Q is the ouput 20?
// A False

// 8
let numbers = [1, 3, 5, 7, 9]
let result = numbers.reduce(0, +)

// Q is result value = 25?
// A False

// 9
func result(_ string: String = "2") -> String {
    "I bought \(string) apples"
}
func result(_ int: Int = 6) -> String {
    "I bought \(int) apples"
}

let numberOfApples: String = result()

// Q is number of apples = 6?
// A Won't Compile
