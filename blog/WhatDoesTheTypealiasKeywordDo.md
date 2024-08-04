---
slug: WhatDoesTheTypealiasKeywordDo
title: What does the typealias keyword do?
authors: [szymon]
tags: [swift]
---

The `typealias` keyword allows us to define our own keyword to represent an existing data type in our application. This does not create a new type - it simply provides a new name for an existing type.

An excellent example is Swift's `Codable` protocol which is implemented as a `typealias`.

```swift
public typealias Codable = Decodable & Encodable
```

By the way, did you notice that you can combine protocols with `&` in Swift?

Now, whenever the compiler sees `Codable`,it will replace it with `Decodable & Encodable` and continue compilation.

Imagine we were trying to represent time on a clock. We could use `typealias` to make the tuple representing our clock easier to work with:
```swift
typealias ClockTime = (hours: Int, min: Int)

func drawHands(clockTime: ClockTime) {
print(clockTime.hours) // 3
print(clockTime.min) // 30
}

ClockTime( 3 , 30 )
```

If you wish to make the `typealias` accessible throughout your codebase, declare it outside of any class or enclosing type. Otherwise, the `typealias` will be limited in scope as any other
variable would be.
```swift
// Accessible across the codebase
typealias ClockTime = (hours: Int, min: Int)

class HelloWorld {
// Only available within this class
typealias Greeting = String

func sayGreeting(greeting: Greeting) {}
}
```

It's easy to overuse `typealias` and thereby limit the discoverability of your code, so it’s
important to exercise a little restraint.
