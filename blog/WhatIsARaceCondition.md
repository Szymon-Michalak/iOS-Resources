---
slug: WhatIsARaceCondition
title: What is a race condition?
authors: [szymon]
tags: [concurrency]
---

A race condition occurs when there are multiple threads accessing the same memory concurrently and at least one of the threads is trying to update the information stored there (a.k.a a write task).

Imagine we had 3 threads, A, B, and C all accessing the same memory. In this example, A & B are simply reading the value at this location while C is trying to update the value stored there.

The order in which each thread completes their task can greatly influence the results of the other threads.

For example, if the task running on C finishes prior to the tasks on A & B, then A & B will both be seeing the updated value. Otherwise, if C finishes afterwards, A & B will have completed their tasks on what is now out of date information.

The order in which these threads complete their task is entirely dependent on the operating system’s available resources, the respective thread’s priority level, and in how the operating system’s scheduler schedules these operations.

As you can imagine, this would introduce some variability with our code’s execution and we now have a race condition on our hands; whichever thread _happens_ to finish first can wildly and unpredictably influence the state of our application.

If all 3 threads were just reading the value, we’d have no issues.

Fortunately, Xcode provides us with the Thread Sanitizer tool to help us debug issues involving race conditions. This tool can be enabled by editing your target’s scheme and will detect race conditions at runtime.
