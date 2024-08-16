---
slug: WhatDoesTheNilCoalescingOperatorDo
title: What does the nil coalescing operator do?
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

We can use the nil coalescing operator `??` to providea default value in an expression involving an `Optional`. If the `Optional` resolves to `nil`, our default value will be used instead.

```swift
var username: String?

// Output: Hello, stranger!
print("Hello, \(username ?? "stranger")!")

username = "@aryamansharda"

// Output: Hello, @aryamansharda!
print("Hello, \(username ?? "stranger")!")
```
