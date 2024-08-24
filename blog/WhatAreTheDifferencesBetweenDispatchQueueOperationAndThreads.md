---
slug: WhatAreTheDifferencesBetweenDispatchQueueOperationAndThreads
title: What are the differences between DispatchQueue, Operation, and Threads?
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

:::

The differences between DispatchQueues, Operations, and Threads can be difficult to distinguish, so let's take a moment to review their similarities and differences.

**Threads**  
Simply speaking, threads allow a process to split itself up into multiple simultaneously running tasks.

In iOS, you have what Apple calls a "pool of threads." This is a collection of threads, other than the Main Thread, that the system can assign work to. The operating system will delegate work to one or more of these threads depending on the number of other competing tasks, the load on the processor, and a variety of other environmental factors.

The threads in iOS are so heavily optimized that if a developer were to interact with or dispatch work to them directly, they would almost certainly degrade the thread's performance or introduce issues related to reusability or locking. As a result, Apple provides abstractions over these threads like `DispatchQueue` and `OperationQueue` for developers to use rather than tasking developers with implementing their own custom thread management logic.

When we use these services, we lose visibility into exactly what threads are assigned to execute our work, but this deliberate abstraction simplifies our work tremendously. It allows us to put our trust in iOS to look at all of the relevant factors and dispatch the work intelligently on our behalf.

The main takeaway here is that you should always delegate your work to a `DispatchQueue` or an `OperationQueue` instead of trying to interact withthe threads directly.

**DispatchQueue / Grand Central Dispatch**  
A `DispatchQueue`, also known as Grand Central Dispatch(GCD), allows you to execute tasks either serially or concurrently on your app’s main and / or background threads. As a developer, you simply assign work to GCD and it will delegate it to one or more threads from the system's thread pool, but makes no promises or guarantees about which threads will be used.

`DispatchQueues` support both serial and concurrent execution. Serial queues synchronize access to a resource, whereas concurrent queues execute one or more tasks concurrently. In the case of a concurrent queue, tasks are completed according to their complexity and not their order in the queue.

In the simplest terms,DispatchQueueprovides a layerof convenience over the system's thread pool. The developer simply needs to define the task - a `DispatchWorkItem` - and ship it over to a `DispatchQueue` which will handle all of the heavylifting and thread management.

**OperationQueue**  
You can think of `OperationQueue` as a better, more powerful version of `DispatchQueue`.

Grand Central Dispatch (GCD) is a low-level C API that interacts directly with the Unix level of the system whereasOperationQueueis built on topof GCD and provides an Objective-C interface instead.

As we will discuss in a moment, `OperationQueue` comes with many advantages, but it also introduces some additional overhead. This is due to the fact that `OperationQueue` instances need to be allocated and deallocated whenever they are used. Although this process is heavily optimized, this additional overhead makes it slower than GCD.

So, what's the advantage of `OperationQueue` if it's slower than GCD?`OperationQueue` allows you to manage scheduled operations with much greater control than GCD provides. `OperationQueues` make it easy to specify dependencies between individual operations, to cancel and suspend enqueued operations, or to re-use operations, none of which are possible with GCD.
`
Apple's official recommendation is to always use the highest level of abstraction available, but if you only need to dispatch a block of code to execute in the background and you don't necessarily need `OperationQueues’` additional features,I think `DispatchQueue` is a reasonable choice. If you need more functionality, you can always upgrade to an `OperationQueue`.
