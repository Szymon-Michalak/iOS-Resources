---
slug: WhatAreSomeOfTheMainAdvantagesOfSwiftOverObjectiveC
title: What are some of the main advantages of Swift over Objective-C?
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

**Swift is easier to read**
Objective-C is constrained by C conventions, and arguably cannot be updated unless C itself is updated. By doing away with many legacy conventions like semicolons and parentheses for conditional expressions, Swift is simpler, easier to read, and more expressive.

**Swift is safer**
Although a message sent to a nil object is perfectly acceptable in Objective-C and is treated as a no-op, Swift's explicitness about dealing with potentially nil values (Optionals) allows programmers to write cleaner, more transparent, and safer code. Finally, Swift’s strongly typed nature is another point in its favor.

**Swift is less verbose**
I don't think I have to explain this one. If you've used Objective-C, you'll know what I mean (no need for header files, automatically generated memberwise initializers for structs, syntax is simpler, etc).

**Swift is faster**
Swift's performance has been greatly improved by dropping legacy C conventions. With Apple’s continued support, this will likely only improve over time.

**Swift has fewer namespace collisions**
Since Objective-C does not have formal support for namespaces, it‘s common to use a prefix for all class names to avoid conflict with external dependencies and modules. However, Swift provides implicit namespacing which sidesteps this problem without the need for prefixing class names.

**Swift has greater ARC support**
With Swift, Automatic Reference Counting (ARC) is supported across all procedural and object-oriented code paths. Objective-C, on the other hand, only supports ARC within its object-oriented code and Cocoa APIs; it is not yet available for other APIs, like Core Graphics, and procedural C code.

**Swift goes beyond iOS**

Swift is truly cross-platform - not only can you use Swift to develop applications for iOS, iPadOS, tvOS, and macOS, but you can also use Swift for server-side development too (see Vapor).
