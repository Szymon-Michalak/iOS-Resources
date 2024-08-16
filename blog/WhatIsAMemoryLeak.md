---
slug: WhatIsAMemoryLeak
title: What is a memory leak?
authors: [ace-the-ios-interview]
tags: [memory]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Memory leaks occur when a program incorrectly manages memory allocations such that memory that is no longer needed is not released. Additionally, it is also possible for a memory leak to occur when an object is in memory, but cannot be accessed by the running application.

In iOS, most memory leaks are a result of retain cycles.

This occurs when two entities keep astrongreferenceto one another. Since these entities' respective retain counts would be non-zero, ARC (automatic reference counting) would be
unable to release either one.

The advantage of keywords likeweakorunownedisthat they allow us to create references to other objects without affecting their retain count. As a result, most memory leaks can be mitigated by making the offending referenceweakorunowned.

If we need to debug a memory leak, we can use Xcode’s Memory Graph Tool or the Leaks profiling template within Instruments.
