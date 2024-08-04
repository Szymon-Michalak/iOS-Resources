---
slug: WhatIsOperatorOverloading
title: What is operator overloading?
authors: [szymon]
tags: [general]
---


Operator overloading allows you to change how existing operators interact with custom types in your codebase. Leveraging this language feature correctly can greatly improve the readability of your code.

For example, let’s say we had a struct to representmoney:
```swift
struct Money {
    let value: Int
    let currencyCode: String
}
```

Now, imagine we’re building an e-commerce application. We’d likely need a convenient way of adding up the prices of all items in our shopping cart.

With operator overloading, instead of only being able to add numeric values together, we could extend the+operator to support adding `Money` objects together. As part of this implementation, we could even add logic to convert one currency type into another!

When we want to create our own operator, we’ll need to specify whether it's of theprefix, postfix, orinfixvariety.

**prefix:** describes an operator that comes before thevalue it is meant to be used with (e.x. `!isEmpty`)

**postfix:** describes an operator that comes after thevalue it is meant to be used with (e.x. the force-unwrapping operator -user.`firstName!`)

**infix:** describes an operator that comes in betweenthe value it is meant to be used with and is the most common type (e.x. `+`, `-`,`*` are all infix operators)

In order to take advantage of this language feature, we just need to provide a custom implementation for the operator in our type's implementation:
```swift
struct Money {
    let value: Int
    let currencyCode: String

    static func + (left: Money, right: Money) -> Money {
        return Money(value: left.value + right.value, currencyCode: left.currencyCode)
    }
}

let shoppingCartItems = [
Money(value: 20 , currencyCode: "USD"),
Money(value: 10 , currencyCode: "USD"),
Money(value: 30 , currencyCode: "USD"),
Money(value: 50 , currencyCode: "USD"),
]

// Output: Money(value: 110, currencyCode: "USD")
print(shoppingCartItems.reduce(Money(value: 0 , currencyCode: "USD"), +))
```
