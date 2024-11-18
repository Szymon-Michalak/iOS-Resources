---
title: Swiftlee
description: A resource-rich blog focused on Swift, iOS development, and concurrency topics, managed by Antoine van der Lee.
---

<details>

**URL:** https://www.avanderlee.com

**Author:** `Antoine van der Lee`

**Complexity Levels:**

* **Beginner:** 20%
* **Intermediate:** 50%
* **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**

* **Articles:** 60% (In-depth guides and best practices)
* **Tutorials:** 30% (Step-by-step explanations)
* **News:** 10% (Updates on Swift, iOS, and WWDC)

**Additional Features:**

* **Newsletter:** Regular updates on the latest Swift developments.
* **Courses:** Detailed courses on iOS development and Swift concurrency.

</details>

The Avanderlee blog covers a broad range of topics aimed at **iOS developers**, particularly focusing on Swift's concurrency model, async/await, tasks, and practical code examples. The content caters to developers at various skill levels, with more emphasis on intermediate and advanced topics. Antoine van der Lee provides **well-researched articles**, often sharing insights into **modern Swift practices** and **real-world code implementations**.

**Key Topics:**
- **Concurrency in Swift:** Articles explaining async/await, task management, and Swift’s concurrency model.
- **Swift UI Development:** Practical guides and examples of implementing SwiftUI components.
- **Testing and Debugging:** Comprehensive tutorials on testing Swift code using unit tests, async/await, and concurrency-safe global variables.

---

### 🔵 Understanding Tasks in Swift: A Guide to Concurrency

Tasks in Swift are a key part of the concurrency framework introduced at WWDC 2021. They enable the creation of concurrent environments from non-concurrent methods, making it easier to call methods using async/await. By leveraging tasks, developers can streamline their code, reduce verbosity compared to dispatch queues, and handle asynchronous operations more effectively.

<details>

**URL:** [Tasks in Swift explained with code examples](https://www.avanderlee.com/concurrency/tasks/)

**Published:** 2024-09-01

**Authors:** `Antoine van der Lee`

**Tags:**  
`Swift`, `concurrency`, `async-await`, `iOS`

</details>

#### Key Points
- **Tasks** are an integral part of Swift's concurrency model, enabling asynchronous code execution with async/await.
- **Cancellation handling** within tasks ensures that unnecessary work is avoided, which is crucial for performance and resource management.
- **Prioritization** of tasks allows developers to manage the order of execution, similar to dispatch queues but with simpler syntax.

#### Summary of Contents

- **Introduction to Tasks in Swift:** Provides an overview of how tasks are used in Swift, their purpose in the concurrency framework, and how they compare to dispatch queues.
  
- **Creating and Running Tasks:** 
  - **Basic Task Creation:** Demonstrates how to create a task in Swift, including how to return values or throw errors within a task.
  - **Task Execution:** Explains that tasks in Swift begin execution immediately upon creation, without the need for an explicit start command.

- **Handling Asynchronous Methods:** 
  - **Async Method Execution:** Illustrates how to use tasks to execute async methods within non-concurrent functions, including common errors and how to avoid them.

- **Task Cancellation:** 
  - **Importance of Cancellation:** Discusses the need to check for task cancellation to prevent unnecessary work, with examples of how to implement these checks.
  - **Cancellation Techniques:** Provides code examples for handling task cancellation using `Task.checkCancellation()` and `Task.isCancelled`.

- **Setting Task Priority:** 
  - **Managing Execution Order:** Explains how to set the priority for tasks, similar to quality of service levels in dispatch queues, to manage the order of task execution.

- **Thread Usage in Task Execution:** 
  - **Default Threading Behavior:** Details how tasks are executed on automatically managed background threads and how to verify the execution thread during debugging.

#### Additional Resources
- **[Async await in Swift explained with code examples](https://www.avanderlee.com/swift/async-await/):** A foundational guide to understanding async/await in Swift.
- **[Unit testing async/await Swift code](https://www.avanderlee.com/concurrency/unit-testing-async-await/):** Techniques for testing asynchronous Swift code.
- **[MainActor usage in Swift explained](https://www.avanderlee.com/swift/mainactor-dispatch-main-thread/):** How to dispatch tasks to the main thread using MainActor.

<LinkCard title="Read Full Article" href="https://www.avanderlee.com/concurrency/tasks/" />

### 🔵 Tasks in Swift Explained

This article explores how **tasks** enable concurrency in Swift, allowing asynchronous operations using `async/await`. Tasks simplify multi-threading by abstracting verbosity associated with dispatch queues, enabling clean, concise, and efficient code.

<details>

**URL:** https://www.avanderlee.com/concurrency/tasks/

**Authors:** `Antoine van der Lee`

**Tags:**  
`swift`, `tasks`, `concurrency`, `async-await`, `ios-development`

</details>

#### Key Points
- **Tasks Overview:** Introduced in WWDC 2021, tasks create a concurrent environment from non-concurrent methods.
- **Execution Characteristics:**  
  - Tasks run immediately after creation.
  - Support both synchronous and asynchronous operations.  
  - Allow error handling and return values.
- **Cancellation:** Tasks run regardless of references unless explicitly cancelled, with cancellation checks preventing unnecessary work.
- **Priority Management:** Tasks have priorities (`low`, `medium`, `high`), influencing execution order.

#### Summary of Contents
- **Creating Tasks:** Demonstrates synchronous and asynchronous task creation.
- **Executing Tasks:** Explains default immediate execution and task result handling.
- **Cancellation:** Discusses cancellation techniques using `Task.cancel()`, `Task.checkCancellation()`, and `Task.isCancelled`.
- **Priority Management:** Explains task priority levels and their impact on scheduling.
- **Practical Examples:** Covers fetching images asynchronously and handling cancellation.

#### Helpful Links
- [Async/await in Swift explained with examples](https://www.avanderlee.com/swift/async-await/)  
- [MainActor usage in Swift explained](https://www.avanderlee.com/swift/mainactor-dispatch-main-thread/)  
- [Task Groups in Swift explained with examples](https://www.avanderlee.com/concurrency/task-groups-in-swift/)  
- [Actors in Swift: how to use and prevent data races](https://www.avanderlee.com/swift/actors/)

<LinkCard title="Read Full Article" href="https://www.avanderlee.com/concurrency/tasks/" />
