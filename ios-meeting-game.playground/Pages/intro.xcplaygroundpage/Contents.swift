import UIKit

// 1
class Color {
    var alpha: Float = 1
}

var color = Color()
var colorCopy = color

colorCopy.alpha = 0.5

print(color.alpha)

// Q view1.alpha will print 0.5?
// A true

//2
struct Tutorial {
  var difficulty: Int = 1
}

var tutorial = Tutorial()
var tutorialCopy = tutorial

tutorialCopy.difficulty = 2

print(tutorial.difficulty)

// Q tutorial.difficulty will print 2?
// A false

// 3
var thing = "cars"

var closure = { [thing] in
    print("I love \(thing)")
}

thing = "airplanes"

closure()

// Q What will this code print? "I love airplanes"
// A false

// 4
let i: Int = 101

if case 100...101 = i {
    print("Hello, world!")
}

// Q will it print?
// A true

// 5
func greet(_ name: String = "Anonymous") {
    print("Hello, \(name)!")
}

let greetCopy = greet
greetCopy("Dave")

// Q will it print "Hello, Dave!"?
// A true

// 6
enum Planet: Int {
    case Mercury = 1
    case Venus
    case Earth
}

let test = Planet(rawValue: 2)

// Q is the test Type "Plante"?
// A false

// 7
func foo(_ number: Int) -> Int {
    func bar(_ number: Int) -> Int {
        return number * 5
    }

    return number * bar(3)
}

let output = foo(2)

// Q is the ouput 20?
// A false

// 8
let numbers = [1, 3, 5, 7, 9]
let result = numbers.reduce(0, +)

// Q is result value = 25?
// A false

// 9
struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    var name: String
}

let jamesSong = TaylorFan(name: "James").favoriteSong

// Q is jamesSong favorite song "Shake it Off"?
// A false
