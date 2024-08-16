---
slug: DoesSwiftSupportImplicitCastingBetweenDataTypes
title: Does Swift support implicit casting between data types?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [Type casting in Swift | Log Rocket](https://blog.logrocket.com/type-casting-in-swift/)
  
  **Further Reading:**
    - [Type Casting | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting/)
</details>

:::info[TL/DR]
Swift **does not** support implicit casting.
:::
Swift **does not** support implicit casting.

Take the following expression involving `Doubles`, `Floats`, and `Integers`:

```swift
let seconds: Double = 60
let minutes = 60 // minutes is inferred to be an Int
let hours: Float = 24.0
let daysInYear: Int = 365

// Fails with "Cannot convert value of type Float / Double to
// expected argument type Int"
let secondsInYear = seconds * minutes * hours * daysInYear

// You can see that we've had to explicitly cast all of the
// non-Integer types to Int
let secondsInYear = Int(seconds) * minutes * Int(hours) * daysInYear
print(secondsInYear) //31536000

```

When you have an expression with multiple types, Swift will not automatically convert them to a common shared type. Instead, Swift forces you to be explicit about how you want to deal with this mix of types.

Since the output can only be of one type, Swift leaves it up to the programmer to define what that should be.
