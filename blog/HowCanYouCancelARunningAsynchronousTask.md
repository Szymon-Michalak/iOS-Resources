---
slug:  HowCanYouCancelARunningAsynchronousTask
title:  How can you cancel a running asynchronous task?
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

Let’s look at canceling a task on a `DispatchQueue` first. In order to do this, we’ll just need to maintain a reference to the `DispatchWorkItem`:

```swift
let task = DispatchWorkItem { [weak self] in
    print("Performing a task...")
}

DispatchQueue.main.async(execute: task)
task.cancel()
```

Things are a little more nuanced when we’re working with an `OperationQueue`.

When we add an `Operation` to the `OperationQueue`, we’re relinquishing control over to the queue which is now responsible for managing and scheduling those operations.

With the `OperationQueue` handling the heavy lifting, our only available actions are to resume/suspend the `OperationQueue` in its entirety, cancel all of the queued tasks, or call `cancel()` on
a specific `Operation`.

When we call `cancel()` on an `Operation`, it does notforce our `Operation`’s code to stop
executing. Instead, it simply updates the `Operation` ’s `isCancelled` property to reflect this change in state.

Our `Operation` could be in one of the following stateswhencancel()is called:
- finished executing
- queued but not yet running
- currently executing.

If the `Operation` has already finished executing, this method has no effect.

Canceling an `Operation` that is currently in an `OperationQueue`,but not yet executing, makes it possible to remove the `Operation` from the queue earlier. When the `OperationQueue` arrives at our canceled `Operation`, the default implementation of the `start()` function will
first check to see whether `isCancelled` is true and if so will exit immediately.

```swift
let operationQueue = OperationQueue()

let op1 = BlockOperation { print("First") }
let op2 = BlockOperation { print("Second") }


let op3 = BlockOperation { print("Third") }

operationQueue.addOperations([op1, op2, op3], waitUntilFinished: false)

// Ex: Pause / Resuming Operation Queue
operationQueue.isSuspended = true
if operationQueue.isSuspended {
operationQueue.isSuspended = false
}

// Cancels a single Operation
op2.cancel()

// Output: true
print(op2.isCancelled)
```
You can also cancel all operations scheduled in anOperationQueueby calling `cancelAllOperations()`.

It may seem odd that all `cancel()` accomplishes is changing a boolean value, but that’s about the only change we can safely make. What if there’s cleanup that needs to take place? If we terminate an executing `Operation`, should we throw an exception? If the `Operation` stops
now, will the data be corrupted?

Given the complications of canceling an `Operation`,you can see why our only option is to update this flag and handle the cancellation behavior on a case-by-case basis. If you want to support canceling a running `Operation`, then you’ll need to add checks for `isCancelled`
throughout the `Operation`'s code and modify your logic accordingly:

```swift
final class ExampleOperation: Operation {
    override func main() {
        guard !isCancelled else { return }

        // Do something....
    }
}
```
