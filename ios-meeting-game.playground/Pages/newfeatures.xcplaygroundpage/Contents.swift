//: [Previous](@previous)

import Foundation

// Xcode new Features
// 13.3.1

// ### Existential types
// An existential type is a type that can hold a value of any type conforming to a specific protocol.
// The `any` keyword creates a syntactic distinction between existential types and protocol conformance constraints.
// The `any` keyword is an important syntactic indicator that you’re using an existential type,
// because there are fundamental limitations on the capabilities of these types, such as the inability to conform to protocols. For example:

protocol P {
    var greetings: String { get }
}


// generic syntax
func generic<T>(value: T) where T: P {
    print(value.greetings)
}

// existential syntax
func existential(value: any P) {
    print(value.greetings)
}

// ### Type placeholders
// You can now include type placeholders in type expressions and annotations.
// Type placeholders direct the compiler to set the type for that position according to the usual type inference rules.
// To use a type placeholder, enter an underscore (”_”) instead of the type name. For example:

/// This is OK--the compiler can infer the key type as `Int`.
var dict: [_: String] = [0: "zero", 1: "one", 2: "two"]
dict[3] = "three"

// Inverted availability keyword
// You can now write inverted availability conditions using the new #unavailable keyword. For example:

if #available(iOS 15.0, *) {
    let formattedString = Date().formatted(date: .numeric, time: .omitted)
    print(formattedString)
}

if #unavailable(iOS 16.0) {
    // Old implementation
    let dateFormatter = DateFormatter()
    dateFormatter.locale = .current
    dateFormatter.dateFormat = "M/d/yyyy"
    let formattedString = dateFormatter.string(from: Date())
    print(formattedString)
}

//: [Next](@next)
