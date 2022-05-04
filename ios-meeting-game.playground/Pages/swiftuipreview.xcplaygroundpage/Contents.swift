//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

// swiftui playground preview

struct CustomView: View {
    var body: some View {
        Text("hello world")
            .padding(40)
    }
}

let view = CustomView()
PlaygroundPage.current.setLiveView(view)

//: [Next](@next)
