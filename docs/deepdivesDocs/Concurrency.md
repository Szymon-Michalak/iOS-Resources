---
title: ⚡⏳ Swift Concurrency
description: Explore the evolution of concurrency in Swift, from basic asynchronous programming techniques to advanced concurrency models like async/await and actors, culminating in highly specialized concurrency concepts.
---
Explore the evolution of concurrency in Swift, from basic asynchronous programming techniques to advanced concurrency models like async/await and actors, culminating in highly specialized concurrency concepts.

---

## Introduction to Asynchronous Programming
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


## Grand Central Dispatch (GCD) Basics
Overview of GCD and how to use it for concurrency.

### 🔵 Ultimate Grand Central Dispatch Tutorial in Swift

This comprehensive tutorial covers the **Grand Central Dispatch (GCD)** framework in **Swift**, focusing on the principles of **multi-threading**, **concurrency**, and **task management**. It provides detailed explanations of **synchronous** and **asynchronous execution**, **dispatch queues**, and advanced topics like **semaphores**, **DispatchWorkItem**, and **thread safety**. The tutorial is rich with practical examples and **codesnippets**, making it an invaluable resource for developers looking to **optimize** their applications using **GCD**.

<details>

**URL:** https://theswiftdev.com/ultimate-grand-central-dispatch-tutorial-in-swift/

**Published:** 2018/07/10

**Authors:** `Tibor Bödecs`

**Tags:**  
`concurrency`, `multi-threading`, `GCD`, `Swift`, `iOS Development`

</details>

#### Key Points
- **Understanding GCD:** Learn about the underlying **thread pool design pattern** and how **GCD** leverages **CPU cores** for efficient **task management**.
- **Synchronous vs Asynchronous Execution:** Clear explanation of **blocking** vs **non-blocking** code and when to use each.
- **Dispatch Queues:** Detailed exploration of **serial** and **concurrent queues**, including how to use **system-provided** and **custom queues** effectively.
- **Advanced GCD Features:** Insight into using **semaphores**, **dispatch groups**, and **DispatchWorkItem** to handle complex **concurrency** scenarios.
- **Thread Safety:** Essential tips on ensuring **thread safety** in **multi-threaded** applications, avoiding common pitfalls like **deadlocks** and **race conditions**.

#### Summary of Contents
- **GCD Concurrency Tutorial for Beginners:** Introduction to the **GCD framework** and its importance in **multi-threading**.
- **Synchronous and Asynchronous Execution:** Detailed discussion of **sync** vs **async tasks**, with practical examples.
- **Dispatch Queues:** Explanation of **serial**, **concurrent**, **main**, **global**, and **custom queues**, and their use cases.
- **Advanced GCD Techniques:** Coverage of **semaphores**, **dispatch groups**, **barriers**, and more for handling complex tasks.
- **Thread-Safety:** Best practices for maintaining **thread safety** using **GCD** and related constructs.

#### Additional Resources
- **Ray Wenderlich's GCD Tutorial:** [Grand Central Dispatch Tutorial](https://www.raywenderlich.com/148513/grand-central-dispatch-tutorial-swift-3-part-1)
- **Swift by Sundell's Deep Dive:** [A Deep Dive into Grand Central Dispatch in Swift](https://www.swiftbysundell.com/posts/a-deep-dive-into-grand-central-dispatch-in-swift)
- **CPU Core and Threads Explained:** [What is the difference between cores and threads of a processor?](https://www.quora.com/What-is-the-difference-between-cores-and-threads-of-a-processor)

<LinkCard title="Read Full Article" href="https://theswiftdev.com/ultimate-grand-central-dispatch-tutorial-in-swift/" />


### 🔵 Guide to Multi-Threading with GCD in iOS

This article explores how **Grand Central Dispatch (GCD)** can be leveraged to implement multi-threading in iOS applications, enabling concurrent and parallel execution of tasks for optimal performance.

<details>

**URL:** https://betterprogramming.pub/guide-to-multi-threading-gcd-83009f5d62cb

**Authors:** `Neel Bakshi`

**Tags:**  
`multi-threading`, `ios`, `swift`, `gcd`, `performance`, `dispatchqueues`

</details>

#### Key Points
- **Multi-threading in iOS:** Achieved using threads, Grand Central Dispatch (GCD), or `OperationQueues`.
- **Concurrency vs. Parallelism:**
  - *Concurrency:* Time-sliced task execution giving the illusion of parallelism.
  - *Parallelism:* True simultaneous execution across CPU cores.
- **GCD Overview:** Provides tools to manage task execution on serial or concurrent queues.

#### Summary of Contents
- **Queues:** Fundamental components in GCD:
  - *Serial Queues*: Process tasks sequentially in a FIFO manner.
  - *Concurrent Queues*: Handle multiple tasks concurrently or in parallel.
- **Executing Tasks:** Differences between `async` (non-blocking) and `sync` (blocking) task submissions.
- **Dispatch Groups:** A tool to coordinate the completion of multiple tasks.
- **Race Conditions:** Problems arising from concurrent resource access and their solutions:
  - *Serial Queues*
  - *Locks and Semaphores*
  - *Barriers*

#### Helpful Links
- [Apple Documentation on Grand Central Dispatch](https://developer.apple.com/documentation/DISPATCH)

<LinkCard title="Read Full Article" href="https://betterprogramming.pub/guide-to-multi-threading-gcd-83009f5d62cb" />


## Introduction to Operation Queues
Managing tasks with Operation and OperationQueue.
- [Advanced iOS Concurrency: Operations [1]](https://uynguyen.github.io/2020/05/16/iOS-Concurrency-Operations/)
- [Advanced iOS Concurrency: Async Operations [2]](https://uynguyen.github.io/2020/05/30/Advanced-iOS-Concurrency-Async-Operations-2/)
- [Operation | Apple Developer](https://developer.apple.com/documentation/foundation/operation)

### Using Dispatch Queues Effectively
Managing different types of dispatch queues.
- [Working In Thread Safe on iOS](https://uynguyen.github.io/2018/06/05/Working-In-Thread-Safe-on-iOS/)

### 🔵 @preconcurrency Usage in Swift Explained

This article by Donny Wals provides a comprehensive overview of the **`@preconcurrency` attribute** in **Swift**. It explains how developers can use this attribute to **incrementally adopt strict concurrency checks** in their projects, even when dealing with **legacy code** or **dependencies** that haven't yet been updated for modern concurrency standards. The post includes practical examples and use cases that illustrate how to apply **`@preconcurrency`** in various scenarios, ensuring smoother transitions to **Swift's concurrency model**.

<details>

**URL:** https://www.donnywals.com/preconcurrency-usage-in-swift-explained/

**Published:** May 28, 2024

**Authors:** `Donny Wals`

**Tags:**  
`Swift`, `Concurrency`, `Swift 6`, `Xcode`

</details>

#### Key Points
- The **`@preconcurrency` attribute** helps in managing **concurrency warnings** from outdated modules by **suppressing them** when importing these modules.
- It allows developers to **update their code incrementally**, avoiding the **breaking changes** that **strict concurrency checks** might introduce.
- The attribute can be applied not only to **imports** but also to **classes**, **functions**, and **protocols** to maintain compatibility with **older codebases**.

#### Summary of Contents
- **Introduction to `@preconcurrency`:** Overview of the attribute and its importance in adopting strict concurrency checks in Swift.
- **Using `@preconcurrency` with Imports:** Detailed explanation of how to suppress concurrency warnings for modules that aren't fully compliant with **Swift's concurrency model**.
- **Applying `@preconcurrency` to Types and Functions:** Examples of using the attribute in **class declarations** to maintain compatibility with **older code**.
- **In Summary:** Recap of how **`@preconcurrency`** facilitates a **gradual transition** to **strict concurrency checks** as **Swift 6** approaches.

#### Additional Resources
- **Enabling Concurrency Warnings in Xcode 15:** [Link to resource](https://www.donnywals.com/enabling-concurrency-warnings-in-xcode-15/)
- **Level Up Your Swift Concurrency Skills:** [Practical Swift Concurrency Course](https://donnyplus.com/p/practical-swift-concurrency-the-video-course)

<LinkCard title="Read Full Article" href="https://www.donnywals.com/preconcurrency-usage-in-swift-explained/" />


## Error Handling in Asynchronous Code
How to handle errors in asynchronous operations.



## Combine Framework Basics
Introduction to Combine for handling asynchronous tasks.



## Custom Publishers in Combine
Creating custom publishers for more complex async tasks.



## Migrating to async/await
Converting callback-based code to async/await.



### 🔴 Async Await in Swift: The Full Toolkit

This blog post, authored by Jacob Bartlett and published on July 22, 2024, provides a comprehensive overview of the various **tools available in Swift Concurrency**. It explains how to use **async/await**, **async let**, **Tasks**, **Task groups**, **Actors**, **MainActor**, **Sendable**, **Continuations**, **AsyncSequence**, **AsyncStream**, and **Async Algorithms**, emphasizing both **theory** and **practical application**. The article is particularly valuable for developers looking to deepen their understanding of **Swift Concurrency** and apply it effectively in their projects.

<details>

**URL:** [Async await in Swift: The Full Toolkit](https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit?ref=createwithswift.com)

**Published:** July 22, 2024

**Authors:** `Jacob Bartlett`

**Tags:**  
`Swift Concurrency`, `async/await`, `Actors`, `Task Groups`, `Swift`

</details>

#### Key Points
- **Understanding async/await:** Learn the **fundamental syntax** and how to efficiently manage **asynchronous tasks** in **Swift**.
- **Advanced Concurrency Techniques:** Explore the use of **async let**, **Task groups**, and **Actors** to enhance **performance** and **safety** in **concurrent operations**.
- **Practical Examples:** The post includes **code snippets** that illustrate the correct usage of each **concurrency tool** in **real-world scenarios**.
- **Avoiding Common Pitfalls:** Guidance on how to prevent **common issues** like **data races** and **performance bottlenecks** using **Swift Concurrency** features.

#### Summary of Contents
- **async / await:** Introduction to the basic **building blocks of Swift Concurrency** and how to utilize them for efficient **task management**.
- **async let:** Explanation of how to perform **multiple asynchronous operations in parallel**, avoiding **bottlenecks** in **sequential code execution**.
- **Task and Task Group:** Detailed discussion on **structured and unstructured concurrency**, including the use of **task hierarchies** and **cancellation**.
- **Actors and MainActor:** Exploration of how **Actors** ensure **thread-safe operations** and how **MainActor** is used for **UI updates**.
- **Sendable and Continuations:** Insight into preventing **data races at compile-time** and **bridging legacy APIs** with **modern Swift Concurrency**.
- **AsyncSequence and AsyncStream:** Overview of **asynchronous sequences** and **streams**, and their integration with **Combine** and other **Swift features**.
- **Async Algorithms:** Introduction to the **Async Algorithms package**, which extends the capabilities of **AsyncSequence** for more complex **data processing**.

#### Additional Resources
- **Advanced Swift Actors: Re-entrancy & Interleaving:** [Read more](https://jacobbartlett.substack.com/p/advanced-swift-actors-re-entrancy)
- **Swift Algorithms GitHub Repository:** [Visit Repository](https://github.com/apple/swift-algorithms)

<LinkCard title="Read Full Article" href="https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit?ref=createwithswift.com" />

### 🔵 The Full Toolkit for Swift Concurrency: Async/Await

Mastering Swift Concurrency is essential for iOS developers working on modern, responsive apps. This blog post covers the wide array of tools in Swift Concurrency, such as `async/await`, `Task`, `Task Group`, and `Actors`, while exploring when and why you might use them. It provides not just theoretical insights but also practical examples to deepen your understanding.

<details>

**URL:** https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit#the-toolkit

**Published:** 2024-07-22

**Authors:** `EmergeTools`

**Tags:**  
`Swift Concurrency`, `iOS Development`, `Actors`, `async/await`, `Task Group`

</details>

#### Key Points
- **async/await**: Provides syntactic sugar for writing asynchronous code, suspending execution at suspension points for efficiency.
- **async let**: Enables parallel execution of multiple asynchronous operations to minimize bottlenecks.
- **Task**: The fundamental building block of concurrency, supporting unstructured asynchronous work.
- **Task Groups**: Facilitates concurrent execution of a dynamic number of tasks, with flexible error handling.
- **Actors**: Ensures safe concurrent access to mutable state.
- **MainActor**: A concurrency construct designed for UI work to ensure updates happen on the main thread.
- **Sendable**: A protocol for marking data as safe to share across concurrency contexts.
- **Continuations**: Bridges closure-based legacy APIs with Swift’s modern concurrency model.
- **AsyncSequence**: Provides iterable async collections for sequential, asynchronous value processing.
- **AsyncStream**: Extends AsyncSequence to handle continuous value emission, useful for multi-callback APIs.
- **Async Algorithms**: An external package providing tools like `debounce`, `zip`, and `removeDuplicates` to create pipelines for async sequences.

#### Summary of Contents
- **The Toolkit**:
  - Highlights tools such as `async/await`, `Task`, and `Actors`, focusing on their use cases.
- **Code Examples**:
  - Includes parallelization with `async let`, error handling with Task Groups, and bridging legacy APIs with continuations.
- **Advanced Topics**:
  - Delves into Actors' re-entrancy, MainActor's thread safety, and the role of `Sendable` in preventing data races.
- **Best Practices**:
  - Discusses patterns like cooperative cancellation, combining async sequences, and integrating `Async Algorithms` for real-time data processing.

#### Additional Resources
- [Advanced Swift Actors](https://jacobbartlett.substack.com/p/advanced-swift-actors-re-entrancy)
- [Async Algorithms Package](https://github.com/apple/swift-async-algorithms)

<LinkCard title="Read Full Article" href="https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit#the-toolkit" />


### 🔵 Swift Async-Await Explained: Simplifying Asynchronous Programming

Discover the magic of Swift’s async-await, a powerful tool introduced in Swift 5.5 that simplifies asynchronous programming by eliminating callback complexity. This article explores how async-await works, its benefits, and how to implement it effectively in real-world scenarios.

<details>

**URL:** [https://www.dhiwise.com/post/swift-async-await-explained-simplifying-asynchronous](https://www.dhiwise.com/post/swift-async-await-explained-simplifying-asynchronous)

**Published:** 2024-08-04

**Authors:** `DhiWise Team`

**Tags:**  
`swift`, `async-await`, `asynchronous programming`, `ios development`, `concurrency`, `swift 5.5`

</details>

#### Key Points
- Async-await in Swift significantly improves code readability and maintainability compared to older callback-based methods.
- Handling errors in asynchronous functions becomes more consistent and robust with `async throws` and `await`.
- Swift’s concurrency model ensures efficient task management and structured concurrency, reducing the risk of common multi-threading issues.
  
#### Summary of Contents
- **Why Concurrency Matters:** Describes the importance of concurrency for modern apps and the limitations of traditional approaches.
- **Swift’s Asynchronous Evolution:** Explores the shift from completion handlers and GCD to the more streamlined async-await syntax.
- **The Game-Changer: Async Await:** Provides an overview of how async-await simplifies asynchronous tasks by allowing non-blocking, sequential code execution.
- **Understanding Swift Async-Await:** Delves into the key concepts, such as `async` functions, the `await` keyword, and the difference between synchronous and asynchronous calls.
- **Simplification of Asynchronous Code:** Compares the readability and maintainability of async-await versus older callback methods.
- **Handling Errors in Async-Await:** Demonstrates how error handling is managed seamlessly in Swift's asynchronous code.
- **Integration with Swift Concurrency Model:** Explains how async-await interacts with Swift’s broader concurrency features, including `Task` and `TaskGroup`.
- **When to Use and Not to Use Async-Await:** Offers practical advice on when to apply async-await and when to stick with traditional approaches for optimal performance.

#### Additional Resources
- **Swift Async Await vs. Combine:** A guide on how to choose between Swift async-await and the Combine framework for different use cases.
- **Async Let vs. Await in Swift:** Discusses the benefits of `async let` for initiating concurrent tasks compared to direct `await` usage.
- **withCheckedThrowingContinuation:** Explores how to bridge callback-based APIs with async-await using continuations.

<LinkCard title="Read Full Article" href="https://www.dhiwise.com/post/swift-async-await-explained-simplifying-asynchronous" />




## Concurrency with Actors
Using the Actor model to manage state in concurrent Swift code.


### 🔴 Advanced Swift Actors: Re-Entrancy & Authentication

Actors are a powerful tool in Swift for writing asynchronous, thread-safe code, but they are not without their complexities. In this article, we take a deep dive into **actor re-entrancy** and its implications when building an **authentication service** for iOS apps. Through sequence diagrams, real-world examples, and in-depth code demonstrations, you’ll learn how to use actors to solve common concurrency issues while optimizing network performance.

<details>

**URL:** [https://blog.jacobstechtavern.com/p/advanced-swift-actors-re-entrancy](https://blog.jacobstechtavern.com/p/advanced-swift-actors-re-entrancy)

**Published:** 2024-09-10

**Authors:** `Jacob’s Tech Tavern`

**Tags:**  
`Swift`, `Actors`, `Concurrency`, `iOS Development`, `Re-entrancy`, `OAuth 2.0`

</details>

#### Key Points
- **Actors and Re-Entrancy:** Explanation of how actors enforce serial execution but allow interleaving of tasks, causing potential re-entrancy issues.
- **Authentication Service Use Case:** A real-world example using OAuth 2.0 to build a token-based authentication system that avoids unnecessary concurrent token refreshes.
- **Handling Multiple Requests:** Optimization techniques using actors to prevent duplicated API calls and improve network efficiency by ensuring only one token refresh at a time.
- **Concurrency Theory:** A detailed breakdown of Swift’s concurrency model, including cooperative threading, tasks, and how actors use serial executors to manage state safely.

#### Summary of Contents
- **Introduction to Actors:** The basics of actors in Swift, how they work, and why they are useful for concurrency.
- **Real-Life Use Case:** Implementing a simple authentication service with token refresh logic, demonstrating the potential for re-entrancy issues with concurrent requests.
- **Optimizing Authentication Logic:** A step-by-step guide to improving the authentication service by leveraging actor-based concurrency to ensure a single token refresh across multiple requests.
- **Swift Concurrency Runtime:** A deep dive into how Swift’s concurrency model works under the hood, including task execution, suspension points, and actor serial queues.

#### Additional Resources
- **[OAuth 2.0 Standard](https://datatracker.ietf.org/doc/html/rfc6749)**: Learn more about OAuth 2.0, the most common authentication protocol used in mobile apps.
- **[Swift Actors Documentation](https://developer.apple.com/documentation/swift/swift-actors)**: Apple’s official documentation on actors and concurrency in Swift.

<LinkCard title="Read Full Article" href="https://blog.jacobstechtavern.com/p/advanced-swift-actors-re-entrancy" />

### 🔵 Understanding the Actor Reentrancy Problem in Swift

Swift actors have brought significant improvements to handling asynchronous code, eliminating data races and deadlocks. However, actors are not free from threading issues, and a common problem developers face is **actor reentrancy**. In this post, we’ll walk through what the reentrancy problem is, why it’s problematic, and how to prevent it when using actors in Swift.

<details>

**URL:** [https://swiftsenpai.com/swift/actor-reentrancy-problem/](https://swiftsenpai.com/swift/actor-reentrancy-problem/)

**Published:** 2024-09-10

**Authors:** `Swift Senpai`

**Tags:**  
`Swift`, `Actors`, `Concurrency`, `Reentrancy`, `Async`

</details>

#### Key Points
- **Actors in Swift:** Actors allow developers to write asynchronous code that’s free from data races and deadlocks.
- **Reentrancy Problem:** The actor reentrancy problem arises when an actor is interrupted during its execution, leading to inconsistent state changes.
- **Preventing Reentrancy:** Developers can mitigate reentrancy issues by performing state mutations in synchronous code or checking the actor’s state after suspension points.

#### Summary of Contents
- **Real-life Example of Reentrancy:** A `BankAccount` actor with asynchronous withdrawals shows how concurrent withdrawals can lead to negative balances due to reentrancy.
- **Identifying the Problem:** The issue occurs when the actor state (account balance) changes between suspension points during concurrent transactions.
- **Solutions to Prevent Reentrancy:** Two main approaches are highlighted: performing state mutations in synchronous code and checking actor state after suspension points.
- **Thread Safety vs. Reentrancy:** The distinction between thread safety and reentrancy is explored, showing how actors guarantee thread safety but do not inherently protect against reentrancy issues.

#### Additional Resources
- **[Preventing Data Races with Actors](https://swiftsenpai.com/swift/actor-prevent-data-race/):** Learn how actors help prevent data races.
- **[Sendable in Swift](https://swiftsenpai.com/swift/sendable-prevent-data-races/):** Using `Sendable` to further enhance concurrency safety.
- **[Swift Concurrency Basics](https://swiftsenpai.com/swift/swift-concurrency-get-started/):** Introduction to Swift concurrency.

<LinkCard title="Read Full Article" href="https://swiftsenpai.com/swift/actor-reentrancy-problem/" />

### 🔵 Understanding Actor Isolation in Swift

Actor isolation is at the heart of Swift’s concurrency model, aiming to eliminate data races. While it introduces new concepts, many mechanisms behind isolation are familiar. This blog breaks down the key ideas behind actor isolation, making it approachable even for developers new to Swift concurrency.

<details>

**URL:** [https://www.massicotte.org/intro-to-isolation](https://www.massicotte.org/intro-to-isolation)

**Published:** 2024-11-24

**Authors:** `Matt Massicotte`

**Tags:**  
`Swift Concurrency`, `Actor Isolation`, `Static Isolation`, `Dynamic Isolation`

</details>

#### Key Points
- **Isolation in Swift** eliminates data races, ensuring safe access to mutable state.
- **Definitions Govern Isolation:** Isolation is always determined at compile time by type or function definitions.
- **Three Isolation Types:** 
  - None (default),
  - Static (e.g., `@MainActor`), 
  - Dynamic (`MainActor.assumeIsolated`).
- **Opting Out:** Use `nonisolated` to remove isolation from functions or constants.
- **Closures and Protocols:** Inherited isolation and protocol-based isolation can influence design patterns.
- **Dynamic Isolation for Legacy Code:** Useful for pre-concurrency systems where static isolation is impractical.
- **Practical Implications:** Understanding isolation is crucial when working with SwiftUI or adopting concurrency incrementally.

#### Summary of Contents
- **What is Isolation?:** Explains how Swift eliminates data races and enforces thread safety.
- **Understanding Definitions:** Highlights how to analyze isolation based on type and function definitions.
- **Types of Isolation:** Breaks down static and dynamic isolation mechanisms, including examples.
- **Closures and Inherited Isolation:** Discusses how closures adopt isolation from their surrounding context.
- **Protocols and Isolation:** Explains how protocol isolation affects design.
- **Dynamic Isolation:** Demonstrates how to bridge gaps in legacy code or systems with runtime isolation guarantees.
- **SwiftUI Challenges:** Examines how SwiftUI’s inconsistent isolation model creates practical issues.

#### Additional Resources
- **[Swift Concurrency Recipes](https://github.com/mattmassicotte/ConcurrencyRecipes):** Techniques for working with isolation and protocols.
- **[Complete Concurrency Checking](https://www.massicotte.org/complete-checking):** How to enable warnings for incomplete concurrency isolation.
- **[Swift Evolution Proposal 0420](https://github.com/apple/swift-evolution/blob/main/proposals/0420-inheritance-of-actor-isolation.md):** Recent changes improving isolation in Swift.

<LinkCard title="Read Full Article" href="https://www.massicotte.org/intro-to-isolation" />

### 🔵 Advanced Swift Actors: Re-Entrancy and Interleaving

Actors in Swift provide a powerful tool for managing concurrency, enforcing serial access to state and methods. However, the nuances of actor behavior, especially re-entrancy and interleaving, can lead to unexpected results if not well understood. This blog explores these concepts with a practical example of building an optimal authentication service.

<details>

**URL:** https://blog.jacobstechtavern.com/p/advanced-swift-actors-re-entrancy

**Published:** 2023-10-10

**Authors:** Jacob’s Tech Tavern

**Tags:**  
`Swift Concurrency`, `Actors`, `iOS Development`, `Authentication`, `Concurrency`

</details>

#### Key Points
- **Actors in Swift**: Reference-typed entities ensuring serial access, backed by a `SerialExecutor`.
- **Re-Entrancy**: An actor's async method can suspend at `await`, allowing interleaving of other tasks.
- **Authentication Example**:
  - Naïve implementation results in redundant work and API calls.
  - Optimized version uses Tasks and re-entrancy to handle multiple concurrent token refresh requests efficiently.
- **Practical Tips**:
  - Use `Task` as a property to manage concurrent requests for shared resources.
  - Leverage actor's isolation to synchronize access to shared state.

#### Summary of Contents
1. **Introduction to Actors**:
   - Explanation of serial access and interleaving.
   - Importance of actors in managing state in concurrent contexts.
2. **Authentication Service Use Case**:
   - Common authentication workflow (OAuth 2.0).
   - Problems in naïve implementation with concurrent token refresh.
3. **Theory: Swift Concurrency Model**:
   - Cooperative threading model.
   - Role of continuations and executors.
4. **Optimizing the AuthService**:
   - Implementation of `Task` property to synchronize token refresh requests.
   - Step-by-step breakdown of interleaving behavior and caching.

#### Additional Resources
- [Download the Sample Project](https://github.com/jacobsapps/ActorReentrancy/tree/main/ActorReentrancy)
- [Sequence Diagrams for Design](https://sequencediagram.org/)


<LinkCard title="Read Full Article" href="https://blog.jacobstechtavern.com/p/advanced-swift-actors-re-entrancy" />


## Performance Tuning with Swift Concurrency
Optimizing performance with advanced async techniques.



### 🔴 Problematic Patterns in Swift Concurrency

This blog post outlines common patterns in Swift concurrency that can lead to complications. While "best practices" are subjective and context-dependent, the author identifies recurring issues worth avoiding.

<details>

**URL:** https://www.massicotte.org/problematic-patterns  
**Published:** 2024-11-19  
**Authors:** `Matt Massicotte`  
**Tags:** `Swift`, `Concurrency`, `Best Practices`, `Code Patterns`

</details>

#### Key Points
- **Split Isolation:** Mixing isolation domains in a single type can create unexpected limitations and confusion.
- **Task.detached Misuse:** Overused for convenience but has side effects like losing inherited priorities and task-local values.
- **Explicit Priorities:** Explicitly setting priorities can lead to unintended performance issues and priority inversions.
- **MainActor.run Overuse:** Often unnecessary; prefer leveraging Swift's built-in actor isolation mechanisms.
- **Stateless Actors:** Avoid actors without mutable state unless there's a compelling reason.
- **@preconcurrency Import Risks:** Can inadvertently introduce warnings or semantic issues when adapting completion handlers.
- **Redundant Sendable Conformance:** Global actor-isolated types are inherently `Sendable`, so additional conformance may indicate misunderstanding.
- **RunLoop APIs:** Limited compatibility with non-MainActor contexts; require careful handling.
- **Blocking Async Work:** Using synchronous constructs like `DispatchSemaphore` risks deadlocks.
- **Unstructured Concurrency:** Prefer structured concurrency for clarity, maintainability, and implicit cancellation support.

#### Summary of Contents
- **Introduction:** A reflection on the pitfalls of “best practices” in emerging technologies like Swift concurrency.
- **Common Problematic Patterns:** Detailed analysis of specific issues with examples and solutions.
- **Final Thoughts:** Encourages experimentation while being mindful of the trade-offs and dangers of blindly following advice.

#### Additional Resources
- [Step-by-Step Network Request](https://www.massicotte.org/step-by-step-network-request)  
- [Dynamic Isolation with MainActor](https://www.massicotte.org/dynamic-isolation)  
- [Reliably Testing Async Code in Swift](https://www.pointfree.co/blog/posts/110-reliably-testing-async-code-in-swift)  

<LinkCard title="Read Full Article" href="https://www.massicotte.org/problematic-patterns" />


### 🔵 Is Dynamic Isolation in Swift Concurrency Bad?

Dynamic isolation in Swift concurrency is a nuanced tool. While **static isolation** is often preferred for its safety and clarity, dynamic isolation remains an essential escape hatch. This article explores the trade-offs between the two approaches, explains when and why you might use dynamic isolation, and provides practical examples.

<details>

**URL:** [https://www.massicotte.org/dynamic-isolation](https://www.massicotte.org/dynamic-isolation)

**Published:** 2024-11-24

**Authors:** `Matt Massicotte`

**Tags:**  
`Swift Concurrency`, `MainActor`, `Static Isolation`, `Dynamic Isolation`

</details>

#### Key Points
- **Static Isolation** is enforced by the compiler, offering safety and clarity.
- **Dynamic Isolation** provides runtime flexibility for legacy or complex codebases.
- **Incremental Adoption** of concurrency often requires dynamic isolation.
- **Atomicity** in `MainActor.run` can simplify complex thread-safe operations.

#### Summary of Contents
- **Static Isolation:** Explains `@MainActor` and other type-level annotations for compiler-enforced thread safety.
- **Dynamic Isolation in Practice:** Details runtime constructs like `MainActor.run` and their use cases.
- **When to Choose Dynamic Isolation:** Discusses incremental concurrency adoption and maintaining atomicity.
- **Best Practices:** Suggests when and how to transition from dynamic to static isolation for long-term maintainability.

#### Additional Resources
- **[Rob Napier’s Gist on Atomicity](https://gist.github.com/rnapier/f513a58ec982ff4738b25afa465f6dda):** A deeper dive into atomic operations using `MainActor.run`.
- **[Intro to Isolation](https://www.massicotte.org/intro-to-isolation):** Foundational concepts in Swift isolation.

<LinkCard title="Read Full Article" href="https://www.massicotte.org/dynamic-isolation" />



## Advanced Combine Operators
Deep dive into complex Combine operators for data streams.



## Custom Schedulers and Executors
Building custom schedulers for fine-tuned concurrency control.



## Concurrency in Distributed Systems
Applying Swift concurrency principles to distributed systems.



## Reactive Extensions (RxSwift) Deep Dive
Advanced patterns and techniques in RxSwift.


## Comparisons

### 🔵 Closures vs. Combine vs. Async-Await in Swift: A Comprehensive Comparison

Explore the evolution of asynchronous coding methods in Swift, from closures to the Combine framework and the powerful Async-Await introduced in Swift 5.5. This comparison highlights the pros and cons of each method and how they have transformed Swift development.

<details>

**URL:** [https://medium.com/@GetInRhythm/closures-vs-combine-vs-async-await-993eb1da4d44](https://medium.com/@GetInRhythm/closures-vs-combine-vs-async-await-993eb1da4d44)

**Published:** 2024-09-15

**Authors:** `Mike Adams`

**Tags:**  
`swift`, `async-await`, `closures`, `combine`, `asynchronous programming`, `ios development`

</details>

#### Key Points
- Swift offers three primary methods for asynchronous coding: **Closures**, **Combine**, and **Async-Await**.
- **Closures** allow for flexible and customizable asynchronous operations but can lead to complex code structures, particularly with callback hell.
- **Combine** simplifies handling asynchronous data streams and offers a declarative approach, making it a powerful framework for reactive programming.
- **Async-Await** introduces a more readable, synchronous-looking syntax for asynchronous tasks, improving code clarity and reducing complexity.

#### Summary of Contents
- **Introduction:** Overview of the three asynchronous coding methods and their respective introductions in Swift.
- **Closures:** Discusses closures as a versatile and foundational feature for asynchronous coding in Swift, particularly useful for handling network requests and UI updates.
- **Combine:** Covers the reactive programming approach of Combine, including its key components (publishers and subscribers) and use cases like data stream management and asynchronous event handling.
- **Async-Await:** Highlights Async-Await as a modern, language-level feature that simplifies asynchronous code, using familiar keywords like `await` and `async` to enhance readability and reduce callback complexity.
- **Comparison of Code Examples:** Visual side-by-side comparison of closures, Combine, and Async-Await in terms of readability, complexity, and code maintainability.
- **Resources:** Additional reading materials for deeper insights into Combine and Async-Await.

<LinkCard title="Read Full Article" href="https://medium.com/@GetInRhythm/closures-vs-combine-vs-async-await-993eb1da4d44" />


### 🔵 Running Tasks in Parallel in Swift

This blog post explores various methods for **running tasks in parallel** using **Swift**. It covers both traditional tools, such as **Grand Central Dispatch (GCD)** and **operation queues**, and newer techniques introduced with Swift's **structured concurrency API**. The post includes **detailed code examples** and highlights the benefits of each approach, particularly focusing on the ability to **limit the number of concurrent operations** for better **performance** and **resource management**.

<details>

**URL:** [**Running tasks in parallel - The.Swift.Dev.**](https://theswiftdev.com/running-tasks-in-parallel/)

**Published:** 2023/02/09

**Authors:** `Tibor Bödecs`

**Tags:**  
`Concurrency`, `Swift`, `GCD`, `Structured Concurrency`, `Operation Queues`

</details>

#### **Key Points**
- The blog post discusses three primary methods for **running parallel tasks** in Swift: **Grand Central Dispatch (GCD)**, **operation queues**, and **structured concurrency**.
- It provides **code examples** for each method, demonstrating how to **perform operations in parallel** and **control the number of concurrent tasks**.
- The post emphasizes the importance of **managing concurrency levels** to **optimize performance** and avoid overwhelming system resources.

#### **Summary of Contents**
- **Grand Central Dispatch (GCD):** Overview of using `**DispatchQueue.concurrentPerform**` to **run tasks in parallel**.
- **Operation Queues:** Explanation of how to use **operation queues** to **manage** and **limit concurrency** in **task execution**.
- **Structured Concurrency:** Introduction to **task groups** in Swift's **structured concurrency API**, with examples of **limiting concurrent tasks** using a **custom helper function**.

#### **Additional Resources**
- **[Grand Central Dispatch Tutorial](https://theswiftdev.com/ultimate-grand-central-dispatch-tutorial-in-swift/):** A detailed guide on **GCD** and its use in Swift.
- **[Swift Structured Concurrency Proposal](https://github.com/apple/swift-evolution/blob/main/proposals/0304-structured-concurrency.md):** The official **Swift Evolution proposal** for **structured concurrency**.

<LinkCard title="Read Full Article" href="https://theswiftdev.com/running-tasks-in-parallel/" />



## Concurrency and Memory Management
Managing memory and performance in highly concurrent applications.




