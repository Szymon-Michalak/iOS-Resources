---
slug: WhatIsTheDifferenceBetweenASerialAndAConcurrentQueue
title: What is the difference between a serial and a concurrent queue?
authors: [szymon]
tags: [concurrency]
---

We can create both types of queues with the help of `DispatchQueue` which is built on top of Grand Central Dispatch.

In the case of a serial queue, the tasks will complete in the order they are added to the queue (FIFO); the first task in the queue will complete before the next task begins.

Serial queues are often used to provide synchronized access to a shared resource in order to prevent race conditions.

```swift
let serialQueue = DispatchQueue(label: "aryamansharda")

serialQueue.async {
    print("This happens first!")
}

serialQueue.async {
    print("This happens second!")
}
```

As you’d expect, the output will be “This happens first!” and then “This happens second!”.

On the other hand, a concurrent queue allows us to start multiple tasks at the same time.
However, while we’re starting all of these tasks at the same time, a concurrent queue makes **no guarantee** about the order in which the tasks willfinish as these tasks are run in parallel.

If you need to establish dependencies between operations or need to ensure a completion order, consider using an `OperationQueue` or a `serialqueue` instead.

```swift
let concurrentQueue = DispatchQueue(label: "aryamansharda",
attributes: .concurrent)

concurrentQueue.async {
print("I'm added to the queue first!")
}

concurrentQueue.async {
print("I'm added to the queue second!")
}
```

Even though we’re adding tasks sequentially, it’s plausible for the second task to finish before the first one completes. It’s simply a matter of how the system dispatches the work to the underlying threads and their respective workloads.
