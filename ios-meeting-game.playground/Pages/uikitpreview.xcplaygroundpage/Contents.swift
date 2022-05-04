//: [Previous](@previous)

import UIKit
import PlaygroundSupport

// uikit playground preview

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

view.backgroundColor = .lightGray
view.layer.borderWidth = 3
view.layer.borderColor = UIColor.red.withAlphaComponent(0.3).cgColor

PlaygroundPage.current.liveView = view

//: [Next](@next)
