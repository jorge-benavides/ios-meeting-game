import UIKit
// Game title:
// Will it compile?

// 15 true or false questions about swift language
// 1
var view1 = UIView()
view1.alpha = 1

let view2 = view1
view2.alpha = 0.5 // view.alpha will print 0.5?

//2
struct Tutorial {
  var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2
print(tutorial1)
print(tutorial2)

// 3
// What will this code print?
var thing = "cars"

let closure = { [thing] in
  print("I love \(thing)")
}

thing = "airplanes"

closure()


// 4

func fetchCrewMember() -> (job: String, name: String) {
    return ("Public Relations", "Jayne")
}

 let result = fetchCrewMember().0
// Q: The output of result will be "Public Relations Jayne?
// A: False

// 5
let names: [String?] = ["Barbara", nil, "Janet", nil, "Peter", nil, "George"]

if let firstName = names.first {
    print(firstName as Any)
}

// Q: The output of firstName will be: "Barbara"
// A: False

// 6
let peopleNames: [String?] = ["Barbara", nil, "Janet", nil, "Peter", nil, "George"]
let results = peopleNames.compactMap { $0 }

// Q: The output of results will be 4
// A: False


// 7
let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data where datum is String {
    print(datum)
}

// Q: The output of this code will be:
// Bill
// Ted
// A: True
