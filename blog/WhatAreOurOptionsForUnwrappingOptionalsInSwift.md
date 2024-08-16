---
slug: WhatAreOurOptionsForUnwrappingOptionalsInSwift
title: What are our options for unwrapping optionals in Swift?
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

### What are our options for unwrapping optionals in Swift?

We have seven options for unwrappingOptionalsinSwift with varying levels of safety:
```swift
var username: String?
var user: User?

// Forced unwrapping (unsafe)
let forcedUnwrapping: String = username!

// Implicitly unwrapped (often unsafe)
// Used when a variable will start off as nil, but will have
// a value by the time you use it.
@IBOutlet var titleLabel: UILabel!

// Optional chaining (safe)
print(user?.emailAddress)

// Optional binding (safe)
if let value = username {

}

// Nil coalescing operator (safe)
let value = username ?? "unknown"

// Guard (safe)
guard let username = username else {
    return
}

// Optional (safe)
if case let value? = username {
    print(value)
}
```
