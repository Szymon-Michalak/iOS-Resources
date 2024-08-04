---
slug: WhatDoesDeadlockMean
title: What does deadlock mean?
authors: [szymon]
tags: [concurrency]
---

Deadlocks occur when threads sharing the same resource are waiting on one another to release access to the resource in order for them to complete their respective tasks.

> Interviewer: “Explain deadlock and I’ll give you the job.”
> Candidate: “Give me the job and I’ll explain deadlock to you.”

Simply put, deadlock describes a situation in which you have two or more entities waiting on one another and, as a result, no progress is made. A deadlock can occur between any two entities. For instance, your code could be waiting for a file system operation to complete and the file system could be waiting for your code to complete execution.

Here’s a simple example of a deadlock:

```swift
func deadLock() {
    let queue = DispatchQueue(label: "deadlock-demo")

    queue.async { // A
        queue.sync { // B
            print("B: Waiting on A to finish.")
        }
        print("A: Waiting on B to finish.")
    }
}
```

Our queue is a serial queue so it’s going to run these blocks synchronously - one after the other.

In this case, the inner closure (B) can’t run until the outer closure (A) finishes. This is because A is holding the control of the current thread (remember it’s a serial queue). A can never finish its execution because it’s now waiting for B to finish running.

A depends on B and B depends on A and the thread stalls. One solution would be to change the queue type from serial to concurrent. This would allow the inner closure, B, to start without waiting for A to finish.

Be careful when working with serial queues as they can easily lead to deadlocks.
