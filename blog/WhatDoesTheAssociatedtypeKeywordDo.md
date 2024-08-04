---
slug: WhatDoesTheAssociatedtypeKeywordDo
title: What does the associatedtype keyword do?
authors: [szymon]
tags: [swift]
---

Imagine we have the following `protocol`:

```swift
protocol Stack {
func push(x: Int)
func pop() -> Int?
}
```

This `protocol` would allow whatever entity conforms to it to have the functionality of a `Stack`.

But what if we wanted our `Stack` to work with `Doubles` or `Strings`? Our only option would be to duplicate the `protocol` and change the types:

```swift
protocol IntStack {
func push(x: Int)
func pop() -> Int?
}

protocol DoubleStack {
func push(x: Double)
func pop() -> Double?
}
```

Clearly, this approach would be a little silly and is obviously not scalable. Luckily, this is exactly the problem that `associated types` can help us solve.

The `associatedtype` keyword allows us to provide a placeholder for the type of the entity that will eventually implement this protocol.

This allows us to generalize our `Stack`:

```swift
protocol Stack {
    associatedtype Element
    func push(x: Element)
    func pop() -> Element?
}
```

In the example above, we’ve declared this new type `Element` which doesn’t exist anywhere else in our code. Now, whenever we implement this `protocol`,`Element` will be replaced with the type of the entity implementing `Stack`.

```swift
class IntStack: Stack {
    func push(x: Int) {
    }

    func pop() -> Int? {
    }
}

class StringStack: Stack {
    func push(x: Int) {
    }

    func pop() -> Int? {
    }
}
```

The compiler is able to infer that `Element` should be an `Int` and a `String` respectively based on our implementations of `push()` and `pop()` and the type of the parameters we’ve specified.

You can always explicitly specify what the substituted type should be if you prefer:
```swift
class IntStack: Stack {
    typealias Element = Int
    func push(x: Int) {
    }

    func pop() -> Int? {
    }
}
```

Now, our `protocol` is extremely extensible withoutus having to duplicate any code.
