//: [Previous](@previous)

import UIKit

"""
# Game title: Be the compiler
Read the code in the snip and determine what the outout is

"""

"Question 1"

class Color {
    var alpha: Float = 1
}

var color1 = Color()
var color2 = color1

color2.alpha = 0.5

print(color1.alpha)

// What will the output be?
// A) 1
// B) 0.5
// C) Won't compile
// D) Compile but crash

// Correct response: B) 0.5

"Question 2"

struct Tutorial {
  var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1

tutorial2.difficulty = 2

print(tutorial1.difficulty)

// What will the output be?
// A) 1
// B) 0.5
// C) Won't compile
// D) Compile but crash

// Correct response: A) 1


"Question 3"

var thing = "cars"

var closure = { [thing] in
    return "I love \(thing)"
}

thing = "airplanes"

print(closure())

// What will the output be?
// A) "I love cars"
// B) "I love airplanes"
// C) Won't compile
// D) Compile but crash

// Correct response: A) "I love cars"


"Question 4"

let i: Int = 100

if case 100..<100 = i {
    print("Hello world!")
} else {
    print("Goodbay world!")
}

// What will the output be?
// A) "Hello world!"
// B) "Goodbay world!"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "Goodbay world!"

"Question 5"

func greet(_ name: String = "John") -> String {
    return "Hello, \(name)!"
}

let greetMe = greet
print(greetMe("Dave"))

// What will the output be?
// A) "Hello, John!"
// B) "Hello, Dave!"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "Hello, Dave!"

"Question 6"

enum Planet: Int {
    case Mercury
    case Venus
    case Earth
}

let planet = Planet(rawValue: 3)
print(type(of: planet))

// What will the output be?
// A) "Planet"
// B) "Optional<Planet>"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "Optional<Planet>"


"Question 7"

func foo(_ number: Int) -> Int {
    func bar(_ number: Int) -> Int {
        return number * 5
    }

    return number * bar(3)
}

print(foo(2))

// What will the output be?
// A) "15"
// B) "30"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "30"


"Question 8"

let numbers = [1, 3, 5, 7, 9].map { String($0) }

// print(numbers.reduce(0, +))

// What will the output be?
// A) "13579"
// B) "25"
// C) Won't compile
// D) Compile but crash

// Correct response: C) Won't compile

"Question 9"

let (captain, engineer, doctor) = ("Mal", "Kailee", "Simon")

print(engineer)

// What will the output be?
// A) "Mal"
// B) "Kailee"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "Kailee"


"Question 10"

func result(_ string: String = "2") -> String {
    "I bought \(string) apples"
}
func result(_ int: Int = 6) -> String {
    "I bought \(int) apples"
}

// print(result())

// What will the output be?
// A) "I bought 2 apples"
// B) "I bought 6 apples"
// C) Won't compile
// D) Compile but crash

// Correct response: D) Won't compile

"Question 11"

let names: [String?] = ["Barbara", nil, "Janet", "George", nil]

if let firstName = names.first {
    print(firstName)
}

// What will the output be?
// A) "Barbara"
// B) "Optional(Barbara)"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "Optional(Barbara)"


"Question 12"

let tempTeacher = "Josh"
let workers: [String?] = [nil, nil, nil]

if let teacherName = (workers.first ?? tempTeacher) {
    print("Teacher: \(teacherName)")
} else {
    print("No teacher found")
}

// What will the output be?
// A) "Teacher: Josh"
// B) "No teacher found"
// C) Won't compile
// D) Compile but crash

// Correct response: B) "No teacher found"

"Question 13"

let array: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(value) in array where value is String? {
    print(value)
}

// What will the output be?
// A) Bill, nil, Ted
// B) Bill, Ted
// C) Won't compile
// D) Compile but crash

// Correct response: B) Bill, Ted

"Question 14"

var hashmap: [_: _] = ["zero": nil, "one": 1, "two": 2]

if let two = hashmap["two"] {
    print(type(of: two))
}

// What will the output be?
// A) Int
// B) Optional<Int>
// C) Won't compile
// D) Compile but crash

// Correct response: B) Optional<Int>

"Question 15"

protocol ValueWrapper {
    var value: Int { get set }
}
struct Wrapper: ValueWrapper {
    var value: Int = 0
}
func add(_ wrapper: any ValueWrapper, num: Int) -> any ValueWrapper {
    var wrapper = wrapper
    wrapper.value += num
    return wrapper
}

//let wrapper: Wrapper = add(Wrapper(), num: 100)
//
//print(wrapper.value)

// What will the output be?
// A) 0
// B) 100
// C) Won't compile
// D) Compile but crash

// Correct response: C) Won't compile

//: [Next](@next)
