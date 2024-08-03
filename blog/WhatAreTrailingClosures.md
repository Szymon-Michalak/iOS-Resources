---
slug: WhatAreTrailingClosures
title: What are trailing closures?
authors: [szymon]
tags: [swift]
---

Trailing closures are simply syntactic sugar in Swift that allow us to implement closures without a ton of boilerplate code. When the ﬁnal parameter in a call to a function is a closure, trailing closures allow you to deﬁne the closure’s contents outside of the function call.

```swift
func sayHello(name: String, closure: (() -> ())) -> Void {
    print("Hello \(name)")
    closure()
}

// Typical syntax
sayHello(name: "Aryaman", closure: {
    print("Finished saying hello.")
    })

// With trailing closure syntax
sayHello(name: "Aryaman") {
    print("Finished saying hello.")
}
```
While this is convenient, convention is to only use trailing closure syntax when your function only has one closure parameter.
If your function has multiple closure parameters, you should adopt the normal syntax instead.

```swift
func sayHello(name: String, then: (() -> ()), finally: (() -> ())) -> Void { print("Hello \(name)")
    then()
    finally()
}

// With trailing closure syntax
sayHello(name: "Aryaman") {
    print("This is the then closure")
} finally: {
    print("This is the final closure")
}

// Preferred approach
sayHello(name: "Aryaman", then: {
    print("This is the then closure")
}, finally: {
    print("This is the final closure")
})
```

You can see in the example above, the ﬁrst call to sayHello() is harder to read than the second call. When multiple closures are required, it’s hard to discern which one does what.
I’d recommend you keep this in mind when completing your take-home assignments.
Additionally, if development team are using a linter like SwiftLint, it will also enforce the same convention:
- Use trailing closure syntax when there is only one closure
- Use the long form syntax when there are multiple closures