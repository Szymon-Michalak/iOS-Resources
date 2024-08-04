---
slug: WhatIsTheDifferenceBetweenTheDesignatedAndConvenienceInitializer
title: What is the difference between the designated and convenience initializer?
authors: [szymon]
tags: [general]
---

Every class requires a designated initializer as it’s responsible for initializing stored properties and calling the `superclass’s` `init()`.

A convenience initializer can be thought of as a wrapper around the designated initializer. They allow you to create a simpler initialization option for your `class` that either provides defaults
for certain initialization parameters or helps transform some input into the exact format the designated initializer needs.

In Swift, we can create a convenience initializer by placing the keyword `convenience` before the init. A `class` can have any number of `convenience` initializers. These initializers can even
call other `convenience` initializers in turn, but eventually they’ll need to call the `designated` initializer:

```swift
class Money: NSObject {
    let value: Int
    let currencyCode: String

    init(value: Int, currencyCode: String) {
        self.value = value
        self.currencyCode = currencyCode
        super.init()
    }

    convenience init?(value: String, currencyCode:String) {
        guard let numericValue =Int(value) else {
            return nil
        }

        self.init(value: numericValue, currencyCode:currencyCode)
    }
}
```

In this example, the `designated` initializer expects value to be an `Int`. So, we can create a `convenience` initializer that helps us handle scenarios when we might have a `String` as input instead.

Notice that the `convenience` initializer is eventually calling the `designated` initializer.
