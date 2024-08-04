---
slug: HowCanWePreventRaceConditions
title: How can we prevent race conditions [the reader-writer problem]?
authors: [szymon]
tags: [concurrency]
---

Continuing on from the previous question, let’s see how we can prevent race conditions.

The solution comes down to ensuring synchronized write access to the shared resource. This would allow us to maintain the performance benefit of having multiple threads read from a shared resource simultaneously, but if any thread(s) wants to update the resource, we’ll need
to force that operation to happen in a synchronized manner.

The obvious solution would be to use a serial queue which ensures synchronized access to a resource by default.

However, if we want to use a concurrent queue, then we’ll need to use a `DispatchBarrier` to make access to our resource thread-safe.`DispatchBarriers` help ensure that no writing occurs while reading and no reading occurs while writing.

When you add a `DispatchBarrier` to a concurrent `DispatchQueue`,the queue delays the execution of the `DispatchBarrier` block (and any taskssubmitted after the `DispatchBarrier`) until all previously submitted tasks finish executing. You can think of the `DispatchBarrier` like a dam.

Once the tasks preceding the `DispatchBarrier` in the queue finish executing, the queue executes the `DispatchBarrier` block by itself. Then,once the block finishes, the queue resumes its normal execution behavior.

Effectively, by surrounding the write operation with a `DispatchBarrier`, we’re ensuring that anytime we try to update this value all reads on other threads are blocked until the write is finished. It’s in essence making a concurrent queue briefly serial until the write operation is finished.

```swift
class VisitorCount {
    let queue = DispatchQueue(label: "aryamansharda.visitor.count", attributes: .concurrent)

    private var visitorCount = 0

    func getVisitorCount() -> Int {
        queue.sync {
            return visitorCount
        }
    }

    func updateVisitorCount() {
        queue.sync(flags: .barrier) {
            visitorCount += 1
        }
    }
}
``` 

In this example, you’ll see that by using the `DispatchBarrier` we’ve ensured that only one thread can update the `visitorCount` at a time. Moreover,any subsequent calls to
`getVisitorCount()` will have to wait until the `DispatchBarrier` is executed and the queue's normal concurrent behavior is restored.
