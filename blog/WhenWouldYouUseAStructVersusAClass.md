---
slug: WhenWouldYouUseAStructVersusAClass
title: When would you use a struct versus a class?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Typically, you’ll want to use a `struct` if any of the following conditions apply:

- Use a `struct` when encapsulating simple data types
- When you need thread safety as `structs` are passed-by-value
- You want pass-by-value semantics
- When the properties defined inside the entity are mostly value types
- You don’t need inheritance
- You don’t need mutability
- When you want automatic memberwise initializers

Apple’s recommendation is to start with a `struct` and transition to a `class` only if you need
inheritance or pass-by-reference semantics. However, if your entity is storing a lot of data then
it may make sense to use a `class` so you’re only incurring the memory cost once.
