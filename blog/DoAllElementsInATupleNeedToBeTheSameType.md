---
slug: DoAllElementsInATupleNeedToBeTheSameType
title: Do all elements in a tuple need to be the same type?
authors: [szymon]
tags: [swift]
---


Tuples are a very convenient way to group elements together without having to create a custom object or struct to encapsulate them.

To create a tuple in Swift, simply specify a comma separated list of values within a set of parentheses like this:

```swift
let tuple = ( 1 , 2 , 3 , 123.0, "Hello, world!")
print(tuple. 4 ) // Hello, world!
```

As you can see, a tuple doesn’t have to be a homogenous set of types. It can easily be a mix of different types, but it’s up to you to keep track of what data type exists at each position and interact with it accordingly.
