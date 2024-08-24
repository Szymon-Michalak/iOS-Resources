---
slug: HowCanWeGroupMultipleAsynchronousTasksTogether
title: How can we group multiple asynchronous tasks together?
authors: [ace-the-ios-interview]
tags: [concurrency]
---


<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [Exploring Concurrency in Swift: DispatchGroup vs. Async/Await](https://medium.com/@vermarahul1454/exploring-concurrency-in-swift-dispatchgroup-vs-async-await-5284b43adeba)
  
  **Further Reading:**
    - [Understanding DispatchGroup in Swift](https://developer.apple.com/documentation/dispatch/dispatchgroup)
    - [Swift Concurrency: async/await](https://developer.apple.com/documentation/swift/concurrency)
</details>

:::info[TL/DR]
Swift’s `DispatchGroup` and the newer `async/await` syntax both allow us to group and monitor the completion of multiple asynchronous tasks. `DispatchGroup` offers a traditional approach, while `async/await` provides a more modern, readable way to handle asynchronous operations.
:::

In Swift, grouping multiple asynchronous tasks can be achieved using either `DispatchGroup` or `async/await`.

### Using `DispatchGroup`
`DispatchGroup` is a traditional tool used to group multiple asynchronous tasks and monitor their completion. It enables you to schedule tasks on the same or different queues and ensures that all tasks are completed before proceeding with further actions, such as notifying the user.

#### Example: Uploading Images with `DispatchGroup`
```swift
class DispatchGroupDemo {
    func uploadImages(images: [UIImage]) {
        let group = DispatchGroup()
        for image in images {
            group.enter()
            ImageUploader.upload(image) {
                // Successfully uploaded photo
                group.leave()
            }
        }
        group.notify(queue: .main) {
            // Show user success message
        }
    }
}
```
In this example, each image is uploaded independently, and only after all uploads are complete does the notify closure execute.

### Using `async` and `await`
The `async`/`await` syntax in Swift offers a more modern approach, allowing asynchronous code to be written in a more linear and readable manner.

#### Example: Uploading Images with `async`/`await`
```swift
class AsyncAwaitDemo {
    func uploadImages(images: [UIImage]) async {
        for image in images {
            await ImageUploader.upload(image)
        }
        // Show user success message after all uploads are complete
    }
}

class ImageUploader {
    static func upload(_ image: UIImage) async {
        // Simulate image upload with async/await
        try? await Task.sleep(nanoseconds: 1_000_000_000) // Simulates a 1-second upload delay
    }
}
```
This example simplifies the code, making it easier to follow by using the `await` keyword to pause execution until each asynchronous task completes.

### Use Cases
- **Independent Web Requests**: When multiple pieces of data need to be fetched asynchronously before proceeding.
- **Batch Processing**: Such as uploading a collection of photos independently, where completion of all uploads triggers a final action.

### Alternative: `OperationQueue`
If you prefer using `OperationQueue`, it allows you to add dependencies between tasks, ensuring they complete sequentially while treating them as a related group.

:::tip[In Bullets]
- **DispatchGroup Usage:** Group and synchronize multiple asynchronous tasks.
- **Async/Await:** Modern, more readable approach for handling asynchronous code.
- **Independent Execution:** Each task runs independently but is monitored collectively.
- **OperationQueue Alternative:** Allows for sequential task dependencies.
:::
