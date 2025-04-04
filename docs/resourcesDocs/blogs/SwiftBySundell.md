---
title: Swift by Sundell
description: Articles, podcasts, and news about Swift development, by John Sundell. Since early 2017, Swift by Sundell has been publishing valuable content covering a wide range of topics, freely accessible to developers of all skill levels.
---

Swift by Sundell is a platform providing high-quality articles, podcasts, and news about Swift development. Created by John Sundell, it offers insights, tutorials, and discussions on various Swift and iOS development topics, making it a valuable resource for developers at all levels.

<details>
**URL:** https://www.swiftbysundell.com

**Authors:** `John Sundell`

**Complexity Levels:**
   - **Beginner:** 30%
   - **Intermediate:** 40%
   - **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Articles:** 40% (In-depth articles and best practices)
   - **Podcasts:** 30% (Discussions and interviews)
   - **Tutorials:** 20% (Step-by-step guides and practical examples)
   - **News:** 10% (Updates on Swift and iOS development)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Podcast:** Weekly podcast episodes discussing various topics in Swift development.
   - **Books and Courses:** Extensive learning resources.
</details>

<LinkCard title="Visit Swift by Sundell" href="https://www.swiftbysundell.com" />

---

## **Foundation**

### 🔵 Working with Files and Folders in Swift

This article explores **various APIs in Swift** for handling **files and folders**, which are **crucial tasks** for any app dealing with **long-term data persistence**. The discussion includes how to use **`URL`** and **`Data`** types for **reading and writing files**, managing **bundles and modules** in apps, and working with **system-defined** and **custom folders** using **`FileManager`**. **Practical code examples** are provided throughout to demonstrate the **implementation**, with a focus on **cross-platform compatibility** and **best practices**.

<details>

**URL:** [Working with files and folders in Swift](https://www.swiftbysundell.com/articles/working-with-files-and-folders-in-swift/)

**Published:** 30 Aug 2020

**Authors:** `John Sundell`

**Tags:**  
`file-system`, `data`, `state-management`, `Swift 5.2`

</details>

#### **Key Points**
- The article covers **essential Swift APIs** for interacting with the **file system**, including **`URL`**, **`Data`**, and **`FileManager`**.
- It highlights the **differences** in file handling across **Apple platforms**, with a focus on **sandboxing** and **system-defined folders**.
- **Practical code examples** show how to **manage files and folders effectively**, both in **app bundles** and within **custom directories**.

#### **Summary of Contents**
- **URLs, Locations, and Data:** Discusses how to use **`URL`** and **`Data`** types to **read and write files**.
- **Bundles and Modules:** Explains accessing **internal files** within **app bundles** and the importance of managing **multiple bundles**.
- **Storing Files within System-Defined Folders:** Covers **writing files** to **system-defined locations** like **`Documents`** and **`Library`** using **`FileManager`**.
- **Managing Custom Folders:** Discusses how to **create and manage custom folders** within **system-defined directories**.

#### **Additional Resources**
- **[Files Library](https://github.com/JohnSundell/Files):** An **object-oriented wrapper** around **system APIs** like **`FileManager`** for managing **files** in Swift.
- **[Caching in Swift](https://www.swiftbysundell.com/articles/caching-in-swift):** A related article on how to effectively **cache data** in Swift applications.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/working-with-files-and-folders-in-swift/" />

### 🔵 Launch Arguments in Swift
This article by **John Sundell** explores how to effectively use **launch arguments** in **Swift**, particularly for **iOS development**. **Launch arguments** are typically used with **command-line tools**, but this article demonstrates their usefulness in **debugging**, **testing**, and **feature flagging** within **iOS apps**. By integrating **launch arguments**, developers can **streamline** their workflow, quickly setting up specific **app states**, simulating **network conditions**, and more.

<details>

**URL:** [Launch arguments in Swift](https://www.swiftbysundell.com/articles/launch-arguments-in-swift/)

**Published:** 20 May 2018

**Authors:** `John Sundell`

**Tags:**  
`scripting`, `debugging`, `ui-testing`

</details>

#### Key Points
- **Swift’s `CommandLine` API** can be used to access **launch arguments**, making it easy to switch between different **app states**.
- **`UserDefaults`** can parse **launch arguments** into useful data types like **`Bool`**, **`Int`**, and **`Double`**, providing more flexibility.
- Practical applications include **debugging** **network issues**, **overriding** **feature flags**, and setting specific **app states** for **UI testing**.

#### Summary of Contents
- **Parsing Launch Arguments:** How to use **`CommandLine`** and **`UserDefaults`** for handling **launch arguments**.
- **Passing Launch Arguments:** Methods to pass arguments using **Xcode** for **testing** and **debugging**.
- **Debug Actions:** Using **launch arguments** to simulate conditions like **slow network performance**.
- **Overriding Feature Flags:** Simplifying **feature development** by **overriding server-based feature flags** locally.
- **Setting State:** Automating repetitive tasks like **resetting the app state** or **pre-populating data** for **testing**.

#### Additional Resources
- **Feature flags in Swift:** Learn more about using **feature flags** in **iOS development**.
- **Getting started with Xcode UI testing in Swift:** A guide to using **Xcode's UI testing** features.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/launch-arguments-in-swift/" />

## **Debuging**

### 🔵 Feature Flags in Swift

This blog post by **John Sundell** provides an in-depth look at using **feature flags** in **Swift development**. **Feature flags** are essential tools for **gradually rolling out new features**, performing **A/B testing**, and managing different **code paths** at **compile time** or **runtime**. The article discusses various strategies, including **conditional compilation**, **static flags**, and **runtime flags**, with practical **code examples** for each.

<details>

**URL:** [Feature flags in Swift](https://www.swiftbysundell.com/articles/feature-flags-in-swift/)

**Published:** 25 Mar 2018

**Authors:** `John Sundell`

**Tags:**  
`Swift`, `feature flags`, `architecture`, `maintenance`

</details>

#### Key Points
- **Feature flags** help in **rolling out new implementations gradually**, **reducing the risk** of big changes, and enabling **A/B testing**.
- **Conditional compilation** allows developers to remove certain **code blocks** from **production builds** using **compiler flags**.
- **Static feature flags** provide a simple way to control **feature availability** at **runtime** but cannot be modified after **compilation**.
- **Runtime feature flags** offer greater **flexibility** by allowing **dynamic control** of features, though they add **complexity** to the app's **maintenance** and **debugging**.

#### Summary of Contents
- **Conditional Compilation:** Explanation of how to use **compiler flags** to gate **code blocks** during the **build process**.
- **Static Flags:** Discussion on using **static properties** in a **FeatureFlags** struct to manage **feature availability**.
- **Runtime Flags:** Overview of dynamically controlling **feature flags** using **backend systems**, with an example of **loading flags** from a **JSON response**.

#### Additional Resources
- **A/B Testing:** [Wikipedia on A/B Testing](https://en.wikipedia.org/wiki/A/B_testing)
- **Using @autoclosure when designing Swift APIs:** [Link to article](https://www.swiftbysundell.com/articles/using-autoclosure-when-designing-swift-apis)

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/feature-flags-in-swift/" />

## **API Design**

### 🟢 Using @autoclosure When Designing Swift APIs

The article discusses how Swift's **`@autoclosure`** attribute can simplify API design by **deferring the execution** of expressions until needed. It highlights the advantages of using **`@autoclosure`** in **reducing verbosity**, **improving readability**, and **enhancing performance**. Examples include its use in **assertions**, **animations**, **error handling**, and **default value assignments** in dictionaries.

<details>

**URL:** [Using @autoclosure when designing Swift APIs](https://www.swiftbysundell.com/articles/using-autoclosure-when-designing-swift-apis/)

**Published:** 28 May 2017

**Authors:** `John Sundell`

**Tags:**  
`language features`, `api design`, `Swift 5.0`

</details>

#### Key Points
- **`@autoclosure`** wraps an argument in a closure, **deferring its execution** until it's actually needed.
- Simplifies function calls by **removing the need for explicit closures** at the call site.
- Used in the **Swift standard library**, such as in **`assert`**, to avoid **unnecessary evaluations** in production builds.
- Enhances **API design** by **reducing verbosity** without sacrificing **code readability** or **performance**.

#### Summary of Contents
- **Introduction:** Overview of **`@autoclosure`** and its primary use cases.
- **Inlining Assignments:** How **`@autoclosure`** can reduce syntax cruft in **animation functions**.
- **Passing Errors as Expressions:** Using **`@autoclosure`** in **error handling** within custom APIs.
- **Type Inference with Default Values:** Improving **type inference** when extracting values from **untyped dictionaries**.
- **Conclusion:** The balance between **reducing verbosity** and maintaining **code expressiveness**.

#### Additional Resources
- **Swift Standard Library: Assert Implementation:** [Link to GitHub](https://github.com/apple/swift/blob/master/stdlib/public/core/Assert.swift)
- **Further Reading on Closures in Swift:** [Link to Swift Documentation](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/using-autoclosure-when-designing-swift-apis/" />

## **Design Patterns**
### 🔵 Exploring the Builder Pattern in Swift

The builder pattern is a powerful design pattern used to construct complex objects step by step. While it's more commonly seen in languages like Java, it's equally applicable in Swift, especially for creating objects with multiple configurations. This blog post explores how the builder pattern works, the problems it solves, and how you can implement it effectively in Swift. By understanding the builder pattern, you can make your objects more predictable, stateless, and easier to test.

<details>

**URL:** https://www.swiftbysundell.com/articles/using-the-builder-pattern-in-swift/

**Published:** 2018-05-08 


**Authors:** John Sundell

**Tags:**  
`design-patterns`, `swift`, `ios-development`, `builder-pattern`

</details>

#### Key Points
- The builder pattern helps in reducing mutable state, making objects simpler and more predictable.
- It is particularly useful when constructing complex objects with many configurations.
- The builder pattern can also improve the encapsulation of an object’s creation process.

#### Summary of Contents
- **Building Objects:** This section explains the core idea of the builder pattern, demonstrating how it simplifies object construction by separating the construction process from the object itself.
- **Separated Mutability:** Discusses how the builder pattern reduces the need for mutable state and prevents accidental sharing of mutable objects.
- **Hiding Complexity:** Shows how the builder pattern can hide implementation details, providing a simpler API for complex tasks.
- **Conclusion:** Reflects on the builder pattern's relevance in Swift, particularly when dealing with Objective-C APIs and when creating public APIs.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/using-the-builder-pattern-in-swift/" />

## SwiftUI

### 🔵 Building an Async SwiftUI Button

Triggering asynchronous actions in response to UI events is a common need in modern SwiftUI applications. This article demonstrates how to build a reusable `AsyncButton` that elegantly handles asynchronous tasks while maintaining a responsive user interface.

<details>

**URL:** [Building an Async SwiftUI Button](https://www.swiftbysundell.com/articles/building-an-async-swiftui-button/)  
**Published:** 2024-11-19  
**Authors:** `John Sundell`  
**Tags:** `SwiftUI`, `Async/Await`, `Custom Button`, `Reusable Components`

</details>

#### Key Points
- **Initial Issue:** Naive async button implementations can lead to race conditions and duplicate calls if buttons aren't properly disabled during execution.
- **Solution:** A custom `AsyncButton` encapsulates state and behaviors, such as disabling during execution and showing a loading spinner.
- **Enhancements:** Add flexibility with options for disabling buttons, showing progress indicators, and customizing labels.
- **Advanced Features:** Delay showing the loading spinner for brief tasks to avoid unnecessary visual glitches.

#### Summary of Contents
- **Basic Async Button Setup:** Implement an `AsyncButton` that manages its state (`isPerformingTask`) to disable itself and show a spinner during execution.
- **Customizing Behavior with Action Options:** Use an `ActionOption` enum to control behaviors like button disabling and showing a `ProgressView`.
- **Optimizing Loading Spinner Timing:** Introduce delayed task logic to avoid flashing spinners for fast tasks.
- **Convenience APIs for Common Labels:** Extend `AsyncButton` with generic constraints for simpler usage with `Text` and `Image` labels.
- **Reusable Integration:** Integrate the `AsyncButton` into other views for consistent async action handling.

#### Additional Resources
- [Annotating Properties with Result Builder Attributes](https://www.swiftbysundell.com/tips/annotating-properties-with-result-builder-attributes/)  
- [Delaying an Async Swift Task](https://www.swiftbysundell.com/articles/delaying-an-async-swift-task)  
- [SwiftUI Extensions Using Generics](https://www.swiftbysundell.com/tips/swiftui-extensions-using-generics/)  

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/building-an-async-swiftui-button/" />