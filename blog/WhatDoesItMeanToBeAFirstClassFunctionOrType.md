---
slug: WhatDoesItMeanToBeAFirstClassFunctionOrType
title: What does it mean to be a first class function or type?
authors: [szymon]
tags: [swift]
---

A first-class citizen is an entity that can be passed as an argument, returned from a function, modified, or assigned to a variable. So, a programming language is said to have first-class functions if it treats functions as first-class citizens.

In simple terms, this means the language supports passing functions as arguments to other functions, returning functions from functions, and assigning them to variables or storing them in data structures.

As we'll see in the following examples, Swift treats functions as first-class citizens.

**Storing Functions In Variables**
We can easily create a function (or in this case a closure definition) and assign it to a variable:

```swift
class FirstClassCitizens {
    var doubleInput:((Int) -> Int)?

    func setup() {
        doubleInput = { value in
            return value * 2
        }
    }
}
```

**Passing Functions As Arguments**
We can also pass functions as arguments to other functions.

For example, whenever we specify an animation in Swift, the second parameter is actually accepting a function.

```swift
class FirstClassCitizens {
    func setup() {
        UIView.animate(withDuration: 1.0) {
            // This is a function passed as a parameter
        }
        UIView.animate(withDuration: 1.0, animations:{
            // Same as above but without trailingclosure syntax
        })
    }
}
```

**Returning Functions From Functions**
We can also return a function from a function as well:

```swift
class FirstClassCitizens {
    func sayHello(name: String)-> (() -> String) {
        return {
            "Hello, \(name)"
        }
    }
}

let returnedFunction = FirstClassCitizens().sayHello(name: "Aryaman")
print(returnedFunction()) // Hello, Aryaman
```
