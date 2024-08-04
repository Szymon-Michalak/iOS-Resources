---
slug: WhatIsAnAnonymousFunction
title: What is an anonymous function?
authors: [szymon]
tags: [swift]
---


An anonymous function is a function definition that isn’t bound to an identifier. For example, most closures are considered anonymous functions. They can help make code more readable by allowing you to define all of the relevant logic in one place.

You will have almost certainly used anonymous functions in your own Swift code. Notice how in the following examples, functions like
`{ self.view.backgroundColor = .orange }` and `{ $ 0 * 2 }` are defined without explicit function namesattached to them.

```swift
func performAnimation() {
    self.view.backgroundColor = .orange
}

// Without anonymous function
UIView.animate(withDuration: 1.0, animations: performAnimation)

// With anonymous function
UIView.animate(withDuration: 1.0) {
    self.view.backgroundColor = .orange
}

// Without anonymous function
func doubleNumbers(num: Int) -> Int {
    return num * 2
}

let input = [ 1 , 2 , 3 , 4 , 5 ]

// Without anonymous function
let result = input.map(doubleNumbers(num:))

// With anonymous function
let resultAnonymous = input.map { $ 0 * 2 }
```