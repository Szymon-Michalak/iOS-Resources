---
slug: WhatDoesItMeanForSomethingToBeThreadSafe
title: What does it mean for something to be thread safe?
authors: [ace-the-ios-interview]
tags: [concurrency]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]
**Thread safety** means that code functions correctly during simultaneous execution by one or more threads. It ensures that a **shared resource** can only be modified by one thread at a time, preventing unpredictable behavior and race conditions.
:::

**Thread safety** is crucial in concurrent programming. Code is considered thread-safe when it functions correctly during simultaneous execution by one or more threads. More specifically, thread safety ensures that some **shared resource** can only be modified by **one** thread at any given time.

Consider a scenario where your application has **multiple threads** all trying to access the same shared resource. Some threads may simply be attempting to **read** from the resource while others are trying to **modify** it.

Now, the resulting state of your application is entirely dependent on whichever thread _happens_ to finish execution first. In software development, we strive for **determinism** wherever possible.

Imagine a situation where **two threads** are attempting to modify the same document. In such a scenario, it’s possible for one thread to **overwrite** the changes made by the other. To make this operation thread-safe, you have to ensure **synchronized access** to the resource. In other words, you’ll need to make all of the other threads **wait** until the current thread modifying the resource finishes execution.

Keep in mind that the **ordering** of the threads' access to some shared resource is determined by the operating system’s **scheduler**. Since the scheduler dispatches tasks based on the current resource availability, task priority, etc., it may order operations differently from moment to moment. There’s no guarantee that the threads will always execute their tasks in a particular order, leading to potential **race conditions**.

Thread safety is generally discussed in relation to **modifying** a resource because multiple threads can **read** from a resource at the same time without causing changes to the resource, which typically doesn’t introduce issues.

:::tip[In Bullets]
- **Thread Safety**: Ensures that code functions correctly during simultaneous execution by multiple threads.
- **Shared Resource**: Only one thread can modify a shared resource at any time, preventing race conditions.
- **Synchronized Access**: Necessary to ensure that modifications by multiple threads don’t conflict with each other.
- **Scheduler**: Manages thread execution order, which can lead to race conditions if not handled properly.
:::
