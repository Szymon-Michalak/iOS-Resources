---
slug: WhatDoesTheMutatingKeywordDo
title: What does the mutating keyword do?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

In Swift, `structs` are value types which means the properties contained within are immutable by default. So, if we want to be able to modify the values within a `struct`, we’ll need to use the `mutating` keyword. This keyword only applies to **value types** as reference types are not immutable in this way.

Whenever we call a function that uses this keyword and modifies the `struct`'s properties, Swift will generate a new `struct` in-place with the modifications applied and will overwrite our original `struct`.

```swift
struct User {
    var firstName = "Aryaman"
    var lastName = "Sharda"

    func makeLowercase() {
        // The following lines cause a compilation error:
        // Cannot assign to property: 'self' is immutable
        firstName = firstName.lowercased()
        lastName = lastName.lowercased()
    }
}
```

Let’s add the `mutating` keyword:

```swift
struct User {
    var firstName = "Aryaman"
    var lastName = "Sharda"

    mutating func makeLowercase() {
        firstName = firstName.lowercased()
        lastName = lastName.lowercased()
    }
}
```

When working with `mutating` functions, we’ll need to declare the property as a variable since we’re making changes to the `struct`'s properties:

```swift
let user = User()

// Compilation Error!
// Cannot use mutating member on immutable value: 'user' is
// a 'let' constant
user.makeLowercase()
```
When we make it a variable, we have no such issue:

```swift
// No error
var user = User()
user.makeLowercase()
```
