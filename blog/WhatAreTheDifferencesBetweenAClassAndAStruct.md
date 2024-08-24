---
slug: WhatAreTheDifferencesBetweenAClassAndAStruct
title: What are the differences between a class and a struct?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [What’s the difference between a class and a struct? | Hacking with Swift](https://www.hackingwithswift.com/example-code/language/whats-the-difference-between-a-class-and-a-struct)
    - [Struct vs classes in Swift: The differences explained | SwiftLee](https://www.avanderlee.com/swift/struct-class-differences/)
  
  **Further Reading:**
    - [Choosing between structs and classes | Apple Developer](https://developer.apple.com/documentation/swift/choosing-between-structures-and-classes)
    - [Structures and Classes | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/)
</details>

| Features               | Classes     | Structs |
|------------------------|-------------|---------|
| Type                   | Reference   | Value   |
| Implement Protocols    | Yes         | Yes     |
| Define Properties      | Yes         | Yes     |
| Define Methods         | Yes         | Yes     |
| Define Initializers    | Yes         | Yes     |
| Be Extended            | Yes         | Yes     |
| Support Inheritance    | Yes         | No      |

:::info[TL/DR]
The main takeaway here is that a class is a **reference-type** and a struct is a **value-type**.
:::

When you pass reference-types around in your program (i.e. as a parameter), you are actually passing a direct reference to the memory location of that object.
As a result, different parts of your program can easily share and modify your object since they’re all referencing the exact same place in memory.

When you pass a `struct` or `enum` to a function, you’re only passing along a copy of the data in them.
So, even if you modify properties of the passed in value-type, the original one remains unchanged as you’re effectively just modifying a duplicate.
This type of behavior is called pass-by-value semantics and is helpful in preventing situations where one part of the code inadvertently changes values or unknowingly affects the application’s state.

Both a `class` and a `struct` can implement `protocols`, define `properties`, `methods`, `initializers`, and be extended, but only a `class` can support inheritance and by extension polymorphism.

Since a struct requires less overhead to create and is safer to use due to it’s immutability and pass-by-value semantics, Apple’s recommendation is to start with a `struct` when you can and change to aclassonly when needed.

However, if the entity you’re working with contains a lot of data, then it’s probably useful for it to be a `class` so you can share a reference to it and only incur the memory cost once.

:::tip[In Bullets]

### Structs
- **Value Type**: Copied when assigned or passed around.
- **Immutability**: Instances are immutable by default (unless marked as `var`).
- **Memory Management**: Managed on the stack for performance.
- **Inheritance**: Cannot inherit from other structs.
- **Initialization**: Automatically gets a memberwise initializer.
- **Use Case**: Ideal for small, lightweight data structures like points, sizes, or ranges.

### Classes
- **Reference Type**: Referenced when assigned or passed around; changes affect all references.
- **Mutability**: Can change its state and properties if it’s a `var` reference.
- **Memory Management**: Managed on the heap, with automatic reference counting (ARC).
- **Inheritance**: Can inherit from other classes, supporting polymorphism.
- **Initialization**: Requires explicit initializers and has default initializer if not provided.
- **Use Case**: Suitable for more complex data structures, especially when you need inheritance or shared mutable state.
:::