---
title: "Building AsyncButton Patterns in SwiftUI"
description: "Explore multiple strategies for handling asynchronous actions in SwiftUI buttons—from unstructured to structured tasks—while managing cancellation and view lifecycle."
---

This snippet explores **three approaches** to handling asynchronous operations in SwiftUI buttons: the typical unstructured task, a structured task tied to view disappearance, and a fully SwiftUI-native `.task(id:)` solution. It highlights **best practices for cancellation, view-scoped task management**, and how to avoid common pitfalls like `CancellationError`.

<details>

**Source:** https://captainswiftui.substack.com/p/is-there-a-better-asyncbutton

**Author:** `Captain SwiftUI`

**Tags:**  
`SwiftUI`, `Concurrency`, `AsyncButton`, `Task`, `View Lifecycle`

**Platforms Supported:** iOS, macOS

**Swift Version:** 6.0
</details>

## Snippet

### 1. Unstructured Task in Button (Baseline)
A common quick solution using `Task` inside a button action. Works, but lacks lifecycle awareness.

```swift
Button(action: {
    Task {
        try await action()
    }
}) {
    label()
}
```

🔻 This task continues even after the view disappears—because it’s *unstructured*.

---

### 2. Structured Task with Cancellation on Disappear
Store the task in a `@State` property and cancel it when the view disappears.

```swift
@State var holdTask: Task<Void, Error>? = nil

Button(action: {
    holdTask = Task {
        try await action()
    }
}) {
    label()
}
.onDisappear {
    holdTask?.cancel()
}
```

✅ Ties the task’s lifecycle to the view's lifecycle, ensuring safe teardown.

---

### 3. View-Scoped Task with `.task(id:)`
Leverage SwiftUI’s `.task(id:)` modifier to structure the async flow more naturally.

```swift
@State private var isRunning = false

Button(action: {
    isRunning = true
}) {
    label()
}
.task(id: isRunning) {
    guard isRunning else { return }
    do {
        try await action()
    } catch is CancellationError {
        print("Task was cancelled")
    } catch {
        print(error.localizedDescription)
    }
    isRunning = false
}
```

✅ Automatically cancels when the view disappears.  
✅ Elegant, minimal, and scoped to view lifecycle.

---

## Insights

SwiftUI gives us **flexible tools** to manage async work, but it’s up to us to:
- ✅ Use structured tasks for predictable teardown and memory safety.
- 💡 Consider `.task(id:)` for clean, lifecycle-bound actions.
- ⚠️ Always handle `CancellationError`—it’s thrown when view-scoped tasks are cancelled.

👉 Want more robust solutions? Check out [ButtonKit](https://github.com/Dean151/ButtonKit) by Thomas Durance for advanced async button handling in production environments.

<LinkCard title="View Full Blog Post" href="https://captainswiftui.substack.com/p/is-there-a-better-asyncbutton" />
