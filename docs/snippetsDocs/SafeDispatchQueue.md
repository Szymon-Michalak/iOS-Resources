---
title: Safe DispatchQueue.main.sync
description: A safe extension for `DispatchQueue.main.sync` in Swift, ensuring thread safety when executing tasks on the main thread.
---

A safe extension for `DispatchQueue.main.sync` in Swift, ensuring thread safety when executing tasks on the main thread.

<details>
**URL:** [Safe DispatchQueue.main.sync (Swift)](https://gist.github.com/sgr-ksmt/4880c5df5aeec9e558622cd6d5b477cb/raw/77fc6c7ddeea00244d292139bb87e047dd7b4d1a/file.swift)

**Published:** Not specified  
**Last Updated:** Not specified

**Author:** `sgr-ksmt`

**Tags:**  
`Swift`, `Concurrency`, `Thread Safety`, `iOS Development`

**Platforms Supported:** iOS, macOS

**Swift Version:** 3.0 and above
</details>

### Key Points
- Provides a safe way to execute tasks synchronously on the main thread.
- Differentiates execution based on whether the current thread is the main thread.
- Ensures thread safety without blocking the main thread unnecessarily.

### Use Cases
- Safely updating the UI from background threads.
- Executing critical code that must run on the main thread without risking deadlock.
- Simplifying thread management in complex Swift applications.

### Alternative Approaches
- Using `DispatchQueue.main.async` for non-blocking calls on the main thread.
- Implementing thread checks manually before calling `DispatchQueue.main.sync`.
- Utilizing third-party libraries for more advanced concurrency management.

### Performance Considerations
- Minimal overhead when executing on the main thread.
- Slight delay when switching from a background thread to the main thread, but necessary for safety.
- Ensures no blocking of the main thread, which maintains app responsiveness.

### Code

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

### Related Snippets
- [Performing UI Updates on Main Thread](#)
- [Using DispatchQueue for Background Processing](#)

### References
- [Apple's Official Documentation on DispatchQueue](https://developer.apple.com/documentation/dispatch/dispatchqueue)
- [Concurrency Programming Guide](https://developer.apple.com/library/archive/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html)

<LinkCard title="Read Full Gist" href="https://gist.github.com/sgr-ksmt/4880c5df5aeec9e558622cd6d5b477cb/raw/77fc6c7ddeea00244d292139bb87e047dd7b4d1a/file.swift" />
