---
title: Hacking with Swift
description: Hacking with Swift is a platform offering a vast array of tutorials, articles, and resources for Swift and SwiftUI developers. Created by Paul Hudson, it caters to developers at all skill levels with a focus on practical, real-world projects.
---

Hacking with Swift is a platform offering a vast array of tutorials, articles, and resources for Swift and SwiftUI developers. Created by Paul Hudson, it caters to developers at all skill levels with a focus on practical, real-world projects.

<details>

**URL:** https://www.hackingwithswift.com

**Authors:** `Paul Hudson`

**Complexity Levels:**
   - **Beginner:** 35%
   - **Intermediate:** 40%
   - **Advanced:** 25%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Tutorials:** 50% (Step-by-step guides and practical examples)
   - **Articles:** 30% (In-depth articles and best practices)
   - **News:** 10% (Updates on Swift and iOS development)
   - **Interactive Content:** 10% (Quizzes and coding challenges)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Books and Courses:** Extensive collection of books and online courses.
   - **Slack Community:** Active community for discussion and support.

</details>

<LinkCard title="Visit Hacking with Swift" href="https://www.hackingwithswift.com" />

---

## **SwiftUI**

### 🔵 How to Fix Slow List Updates in SwiftUI

This article addresses a common issue in **SwiftUI** where sorting or filtering large datasets in a `List` view can lead to significant **performance delays**. The article explains why these delays occur and presents a simple, one-line solution to mitigate the problem using the **`.id(UUID())` modifier**. Additionally, it delves into the **mechanics of SwiftUI** that cause the issue and discusses the **trade-offs** involved with the fix, such as losing **animations** during list updates.

<details>

**URL:** https://www.hackingwithswift.com/articles/210/how-to-fix-slow-list-updates-in-swiftui

**Published:** November 3rd, 2023

**Authors:** `Paul Hudson`

**Tags:**  
`SwiftUI`, `Performance`, `Optimization`

</details>

#### Key Points
- The problem occurs when a **large list** in **SwiftUI** takes significant time to update after **sorting** or **filtering**.
- The root cause is **SwiftUI's process** of comparing old and new list items to animate changes, which is **computationally expensive** for large datasets.
- The **`.id(UUID())` modifier** effectively resolves this issue by forcing **SwiftUI** to treat the list as a **new one**, thus bypassing the expensive comparison process.

#### Summary of Contents
- **Problem Explanation:** The article begins by demonstrating the problem with a **code example** that causes performance delays in a **SwiftUI `List`** when shuffled.
- **The Fix:** Introduces a **one-line solution** using **`.id(UUID())`** that dramatically **improves performance**.
- **Deep Dive:** The article explains why the fix works, including a discussion of **SwiftUI’s list comparison process**.
- **Trade-offs:** It concludes with a discussion on the **trade-offs**, such as the **loss of animations** when using this fix.

#### Additional Resources
- **SwiftUI Performance Optimization Techniques:** [Further Reading](#)
- **Understanding State and Binding in SwiftUI:** [Further Reading](#)

<LinkCard title="Read Full Article" href="https://www.hackingwithswift.com/articles/210/how-to-fix-slow-list-updates-in-swiftui" />
### 🔵 Running Tasks Using SwiftUI's `task()` Modifier

**SwiftUI**'s `task()` modifier, introduced with the concurrency framework, allows developers to run **async tasks** when a view appears, while also automatically canceling those tasks when the view disappears. This makes handling asynchronous operations more efficient compared to traditional methods.

<details>

**URL:** [Tasks in Swift explained with code examples](https://www.hackingwithswift.com/concurrency/tasks/)  
**Published:** 2021-09-23  
**Authors:** `Paul Hudson`  
**Tags:**  
`Swift`, `SwiftUI`, `async-await`, `concurrency`, `iOS`

</details>

#### Key Points
- **`task()` Modifier**: Simplifies async task management in SwiftUI views by creating and canceling tasks as views appear and disappear.
- **Task Cancellation**: Automatically cancels tasks when views disappear, saving resources and optimizing performance.
- **Tracking Identifiers**: `task()` can track `Equatable` values to cancel and restart tasks when identifiers change.

#### Summary of Contents

- **Basic Task Example**:
  - Using `task()` to download data from a server and populate a SwiftUI list. Shows the simplicity of running async operations in SwiftUI.
  
- **Advanced Usage**:
  - Introduces a way to handle tasks that update based on changing identifiers, such as switching between an Inbox and Sent message list.

- **Task Priority and AsyncSequence**:
  - Explains the use of priorities in tasks, and how `AsyncSequence` can be leveraged to handle continuous data streams like a random number generator.

#### Additional Resources
- **[Async await in Swift explained with code examples](https://www.hackingwithswift.com/swift/async-await/):** A guide to understanding async/await in Swift.
- **[What’s the difference between async let, tasks, and task groups?](https://www.hackingwithswift.com/concurrency/async-let-tasks-task-groups):** Detailed comparison of concurrency options in Swift.

<LinkCard title="Read Full Article" href="https://www.hackingwithswift.com/concurrency/tasks/" />

### 🔵 Using SwiftUI's `task()` Modifier

Discover how SwiftUI's `task()` modifier simplifies concurrent task management, automatically starting and canceling tasks based on view lifecycle events. This guide by Paul Hudson dives deep into practical use cases and advanced implementations, including streaming data with `AsyncSequence`.

<details>

**URL:** https://www.hackingwithswift.com/quick-start/concurrency/how-to-run-tasks-using-swiftuis-task-modifier

**Authors:** `Paul Hudson`  

**Tags:**  
`swiftui`, `concurrency`, `tasks`, `async-sequence`, `ios-development`

</details>

#### Key Points
- **Core Functionality:**  
  - Automatically starts tasks when views appear and cancels them when views disappear.
  - Supports task identifiers to restart tasks upon changes in state.
- **Advanced Use Cases:**  
  - Fetching data for dynamic UI elements using `task(id:)`.
  - Streaming real-time data with `AsyncSequence` and task cancellation.

#### Summary of Contents
- **Basic Usage:** The `task()` modifier fetches and decodes JSON for a messaging app, showcasing initial data loading.
- **Advanced Task Management:** Explains handling dynamic state changes with `task(id:)` to adapt tasks to user interactions.
- **Streaming Data:** Demonstrates real-time number generation using `AsyncSequence` and task cancellation in a detail view.

#### Helpful Links
- [How to create a task group and add tasks to it](https://www.hackingwithswift.com/quick-start/concurrency/how-to-create-a-task-group-and-add-tasks-to-it)  
- [What’s the difference between async let, tasks, and task groups?](https://www.hackingwithswift.com/quick-start/concurrency/whats-the-difference-between-async-let-tasks-and-task-groups)  
- [What’s the difference between a task and a detached task?](https://www.hackingwithswift.com/quick-start/concurrency/whats-the-difference-between-a-task-and-a-detached-task)  

<LinkCard title="Read Full Article" href="https://www.hackingwithswift.com/quick-start/concurrency/how-to-run-tasks-using-swiftuis-task-modifier" />
