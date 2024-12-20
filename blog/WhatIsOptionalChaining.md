---
slug: WhatIsOptionalChaining
title: What is optional chaining?
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

Optional chaining is a convenient way of unwrapping multiple `Optional` properties sequentially. If any of the `Optional` values in theexpression resolve tonil, the entire expression will resolve tonil.

Consider the following expression involving multipleOptionalproperties:
```swift
user?.isAdmin?.isActive
```
If `user` or `isAdmin` or `isActive` is `nil`, the entire expression becomes `nil`. Otherwise, `isActive` will return the unwrapped value.

This is much more readable than using multiple `guard` and `if let` statements to break down a sequence of `Optional` values.
