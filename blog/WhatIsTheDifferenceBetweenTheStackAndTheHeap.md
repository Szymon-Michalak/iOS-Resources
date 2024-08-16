---
slug: WhatIsTheDifferenceBetweenTheStackAndTheHeap
title: What is the difference between the stack and the heap?
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

The system uses the stack to store anything on the immediate thread of execution; it is tightly managed and optimized by the CPU.

When a function creates a variable, the stack will store that variable for the lifetime of the function call. Since the stack is so strictly organized, it’s very efficient and fast.

The system uses the heap to store reference types. The heap is a large pool of memory from which the system can request and dynamically allocate blocks of memory.

The lifetime of the items on the heap are flexible and dynamic as the heap doesn’t automatically destroy its data like the stack does. Instead, explicit allocation and deallocation calls are needed.

This makes creating and removing data from the heap a slower process compared to creating and removing data from the stack.