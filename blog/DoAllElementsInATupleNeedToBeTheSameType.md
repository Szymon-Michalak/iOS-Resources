---
slug: DoAllElementsInATupleNeedToBeTheSameType
title: Do all elements in a tuple need to be the same type?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [Using Tuples The Right Way in Swift | Shashank Thakur](https://medium.com/mobile-app-development-publication/using-tuples-the-swift-right-way-7398a191ab70)
  
  **Further Reading:**
    - [Tuple Types | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types/#Tuple-Type)
</details>

`Tuples` are a very convenient way to group elements together without having to create a custom object or `struct` to encapsulate them.

To create a `tuple` in Swift, simply specify a comma separated list of values within a set of parentheses like this:

```swift
let tuple = ( 1 , 2 , 3 , 123.0, "Hello, world!")
print(tuple. 4 ) // Hello, world!
```

As you can see, a `tuple` doesn’t have to be a homogenous set of types. It can easily be a mix of different types, but it’s up to you to keep track of what data type exists at each position and interact with it accordingly.
