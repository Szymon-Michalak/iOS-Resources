---
slug: WhatDoesTheNilCoalescingOperatorDo
title: What does the nil coalescing operator do?
authors: [szymon]
tags: [swift]
---

We can use the nil coalescing operator `??` to providea default value in an expression involving an `Optional`. If the `Optional` resolves to `nil`, our default value will be used instead.

```swift
var username: String?

// Output: Hello, stranger!
print("Hello, \(username ?? "stranger")!")

username = "@aryamansharda"

// Output: Hello, @aryamansharda!
print("Hello, \(username ?? "stranger")!")
```
