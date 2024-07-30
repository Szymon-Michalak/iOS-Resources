---
title: Safe DispatchQueue.main.sync
description: This gist provides a safe extension for `DispatchQueue.main.sync` in Swift 3.0, ensuring thread safety when executing tasks on the main thread.
---

This gist provides a safe extension for `DispatchQueue.main.sync` in Swift 3.0, ensuring thread safety when executing tasks on the main thread.

<details>
**URL:** [Safe DispatchQueue.main.sync (Swift3.0)](https://gist.github.com/sgr-ksmt/4880c5df5aeec9e558622cd6d5b477cb/raw/77fc6c7ddeea00244d292139bb87e047dd7b4d1a/file.swift)

**Published:** Not specified  
**Last Updated:** Not specified

**Authors:** `sgr-ksmt`

**Tags:**  
`Swift`, `Concurrency`, `Thread Safety`
</details>

#### Key Points
- Introduces `mainSyncSafe` methods to safely execute tasks on the main thread.
- Differentiates between main thread and background thread execution.
- Ensures synchronous execution without blocking the main thread.

#### Summary of Contents
- **Introduction:** Presents the need for safe execution on the main thread in Swift programming.
- **Main Sections:** Details the implementation of `mainSyncSafe` methods for different types of task execution.
- **Technical Details:** Covers the use of `DispatchQueue.main.sync` and `Thread.isMainThread` for ensuring thread safety.
- **Applications and Examples:** Provides code examples demonstrating how to use `mainSyncSafe` effectively.
- **Conclusion:** Emphasizes the importance of thread safety in iOS development and summarizes the benefits of the provided extension.

<LinkCard title="Read Full Article" href="https://gist.github.com/sgr-ksmt/4880c5df5aeec9e558622cd6d5b477cb/raw/77fc6c7ddeea00244d292139bb87e047dd7b4d1a/file.swift" />

#### Code

```swift

extension DispatchQueue {
    class func mainSyncSafe(execute work: () -> Void) {
        if Thread.isMainThread {
            work()
        } else {
            DispatchQueue.main.sync(execute: work)
        }
    }

    class func mainSyncSafe<T>(execute work: () throws -> T) rethrows -> T {
        if Thread.isMainThread {
            return try work()
        } else {
            return try DispatchQueue.main.sync(execute: work)
        }
    }    
}
```