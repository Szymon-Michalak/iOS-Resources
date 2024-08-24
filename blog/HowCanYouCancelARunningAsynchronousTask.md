---
slug:  HowCanYouCancelARunningAsynchronousTask
title:  How can you cancel a running asynchronous task?
authors: [szymon]
tags: [concurrency]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [iOSwift.dev](https://ioswift.dev)

  **Additional Sources:**
    - [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)
  
  **Further Reading:**
    - [Understanding Concurrency in Swift](https://ioswift.dev/blog/UnderstandingConcurrencyInSwift)
</details>

:::info[TL/DR]
To cancel a running asynchronous task, you need to maintain a reference to the task. For `DispatchQueue`, use `DispatchWorkItem`; for `OperationQueue`, use `Operation`. With Swift's modern concurrency model, `Task` provides more integrated and straightforward cancellation handling. Canceling a task in any of these systems will not stop it immediately but will set its state to `isCancelled`, which the task must check to stop execution.
:::

### DispatchQueue
Canceling a task on a `DispatchQueue` involves maintaining a reference to the `DispatchWorkItem`. Here’s how you can create and cancel a task:

```swift
let task = DispatchWorkItem { [weak self] in
    print("Performing a task...")
}
DispatchQueue.main.async(execute: task)
task.cancel()
```

### OperationQueue
When using `OperationQueue`, tasks are managed by the queue itself. You can cancel a specific operation or all operations in the queue:

```swift
let operationQueue = OperationQueue()
let op1 = BlockOperation { print("First") }
let op2 = BlockOperation { print("Second") }
let op3 = BlockOperation { print("Third") }
operationQueue.addOperations([op1, op2, op3], waitUntilFinished: false)

// Pause / Resuming Operation Queue
operationQueue.isSuspended = true
if operationQueue.isSuspended {
    operationQueue.isSuspended = false
}

// Cancels a single Operation
op2.cancel()
// Output: true
print(op2.isCancelled)
```

When you call `cancel()` on an `Operation`, it does not force the operation’s code to stop executing immediately. Instead, it updates the `Operation`’s `isCancelled` property to reflect this change in state. You need to check `isCancelled` within the operation’s code:

```swift
final class ExampleOperation: Operation {
    override func main() {
        guard !isCancelled else { return }
        // Do something....
    }
}
```

### Task
With Swift’s concurrency model, `Task` offers a more modern and integrated way to handle asynchronous work. `Task` handles its own cancellation more gracefully:

```swift
let task = Task {
    for i in 0..<5 {
        guard !Task.isCancelled else {
            print("Task was cancelled")
            return
        }
        print("Task running \(i)")
        try await Task.sleep(nanoseconds: 1_000_000_000) // simulate work
    }
}
task.cancel() // This will set the task as canceled
```

### Comparison: OperationQueue vs. Task
- **Concurrency Model:** 
  - **`OperationQueue`**: Part of the older Grand Central Dispatch (GCD) framework, requiring more manual setup.
  - **`Task`**: Integrated with Swift's modern concurrency model, offering a simpler and more elegant approach.

- **Ease of Use:** 
  - **`OperationQueue`**: More complex and verbose, especially for simple tasks.
  - **`Task`**: Simpler and more concise, especially with `async/await`.

- **Automatic Propagation of Cancellation:** 
  - **`Task`**: Automatically propagates cancellation to child tasks, simplifying cancellation management.
  - **`OperationQueue`**: Requires manual management of each operation's cancellation state.

### Additional Details

- **Task State Handling:** Canceling an `Operation` or `Task` will affect it only if it is still queued or running. If the task has finished, cancellation has no effect.

  An `Operation` can be in one of the following states when `cancel()` is called:
  - **Finished:** If the `Operation` has already finished executing, calling `cancel()` has no effect.
  - **Queued but Not Yet Running:** Canceling an `Operation` in this state allows it to be removed from the queue earlier. The `OperationQueue` will check `isCancelled` before starting the task, and if true, it will exit immediately.
  - **Currently Executing:** If the `Operation` is currently executing, the `isCancelled` property is updated, but the operation’s code needs to explicitly check this property and decide how to handle the cancellation.

- **Task Self-Cancellation:** `Task` automatically handles its own cancellation. By checking `Task.isCancelled`, you can determine whether the task should stop executing.

- **Queue Management:** You can suspend and resume the entire `OperationQueue`, which affects all operations within it. You can also cancel all operations in the queue by calling `cancelAllOperations()`.

```swift
operationQueue.isSuspended = true
if operationQueue.isSuspended {
    operationQueue.isSuspended = false
}
```

- **Nuanced Control:** Canceling an operation or task is not an immediate action. It requires the operation’s or task's code to respect the `isCancelled` property. This is crucial for scenarios where cleanup or partial completion might be necessary before fully stopping the operation or task.

## In Bullets

:::tip[In Bullets]
- **DispatchQueue:** Use `DispatchWorkItem` to create a cancellable task.
- **OperationQueue:** Use `Operation` objects and check `isCancelled` to manage task cancellation.
- **Task API:** Swift's `Task` can automatically handle its own cancellation using `Task.isCancelled`.
- **Operation States:** An `Operation` can be finished, queued, or executing when canceled, and the impact of cancellation depends on its current state.
- **Cancel Behavior:** Canceling a task updates its state but doesn't immediately stop execution.
- **Queue Management:** You can suspend, resume, and cancel tasks within an `OperationQueue`.
:::
