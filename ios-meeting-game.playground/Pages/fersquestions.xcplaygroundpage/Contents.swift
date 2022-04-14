
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
