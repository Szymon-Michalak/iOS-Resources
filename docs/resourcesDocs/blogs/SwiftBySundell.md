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

## Foundation
### Working with Files and Folders in Swift

Provide a detailed exploration of utilizing file system APIs in Swift for various platforms, emphasizing practical considerations and implementation strategies.

<details>
**URL:** [Working with files and folders in Swift](https://www.swiftbysundell.com/articles/working-with-files-and-folders-in-swift/)

**Published:** 30 Aug 2020  
**Last Updated:** N/A

**Authors:** John Sundell

**Tags:**  
`file system`, `data`, `state management`
</details>
#### Key Points
- Discusses fundamental Swift types like URL and Data for file operations.
- Highlights accessing bundled resources using Bundle.main.
- Covers strategies for cross-platform compatibility with FileManager.
- Emphasizes best practices for writing and managing files in different system folders.
- Advocates for parameter-based dependency injection for flexible file loading.

#### Summary of Contents
- **Introduction:** Overview of the importance of file system operations in app development.
- **URLs, Locations, and Data:** Using URLs and Data types for reading files, handling paths, and expanding tilde characters.
- **Bundles and Modules:** Accessing bundled resources using Bundle.main and handling unit testing bundles.
- **Storing Files within System-Defined Folders:** Using FileManager to write files to system folders like Documents and Caches, ensuring platform compatibility.
- **Managing Custom Folders:** Creating, modifying, and checking custom folders with FileManager for better file organization.
- **Conclusion:** Summarizes the versatility of Swift's file system APIs across Apple platforms and Linux, with a recommendation for further exploration.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/working-with-files-and-folders-in-swift/" />

### Launch Arguments in Swift

<details>
**URL:** [Launch arguments in Swift](https://www.swiftbysundell.com/articles/launch-arguments-in-swift/)

**Published:** 20 May 2018

**Authors:** John Sundell

**Tags:**  
`scripting`, `debugging`, `ui testing`
</details>

#### Key Points
- Swift provides methods to parse and utilize launch arguments for iOS app development.
- CommandLine.arguments and UserDefaults are primary APIs used to access and parse launch arguments.
- Launch arguments are valuable for debugging, UI testing, and feature flag management.
- They allow developers to modify app behavior dynamically without code changes.
- Usage of launch arguments should be contained and managed to avoid unintended behavior in release builds.

#### Summary of Contents
- **Introduction:** Overview of using launch arguments beyond command line tools in Swift.
- **Parsing and Usage:** Detailed explanation of CommandLine.arguments and UserDefaults for handling launch arguments.
- **Debugging and UI Testing:** Applications of launch arguments in debugging network delays, setting app states, and UI testing setup.
- **Feature Flags and Overrides:** How launch arguments facilitate feature flag overrides during development.
- **Containment and Best Practices:** Recommendations for organizing launch argument handling code to prevent accidental inclusion in production builds.
- **Conclusion:** Benefits of using launch arguments to streamline app development and testing workflows.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/launch-arguments-in-swift/" />

## Debuging
### Feature Flags in Swift

Provide a mechanism to gradually roll out new implementations and functionalities in Swift applications using feature flags.

<details>
**URL:** [Feature flags in Swift](https://www.swiftbysundell.com/articles/feature-flags-in-swift/)

**Published:** 25 Mar 2018  
**Last Updated:** -

**Authors:** John Sundell

**Tags:**  
`architecture`, `feature flags`, `maintenance`
</details>

#### Key Points
- Feature flags allow gating of code based on conditions at compile or runtime.
- They enable gradual feature rollout, risk mitigation, and A/B testing.
- Types include conditional compilation, static flags, and runtime flags.
- Practical benefits include early bug detection, simplified merge conflicts, and internal feature previews.
- Runtime flags support dynamic configuration but increase complexity and testing challenges.

#### Summary of Contents
- **Introduction:** Introduction to the concept and benefits of feature flags.
- **Conditional Compilation:** Using compiler flags to conditionally compile code based on predefined conditions.
- **Static Flags:** Defining feature flags in code using static properties to enable/disable features.
- **Runtime Flags:** Loading flags at runtime, allowing dynamic feature configuration but complicating maintenance.
- **Applications and Examples:** Practical scenarios and examples of implementing feature flags in Swift code.
- **Conclusion:** Recap of benefits and considerations when using feature flags in Swift development.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/feature-flags-in-swift/" />

## API Design
### Using @autoclosure when designing Swift APIs

<details>
**URL:** [Using @autoclosure when designing Swift APIs](https://www.swiftbysundell.com/articles/using-autoclosure-when-designing-swift-apis/)

**Published:** 28 May 2017

**Authors:** John Sundell

**Tags:**  
`language features`, `api design`
</details>

#### Key Points
- Swift’s `@autoclosure` attribute defers execution of expressions until needed.
- It simplifies API design by wrapping arguments in closures automatically.
- Examples include enhancing readability in assertions and reducing verbosity in animations and error handling.
- Enables type inference and reduces syntax clutter when dealing with default values.

#### Summary of Contents
- **Introduction:** Introduces the concept of `@autoclosure` in Swift, highlighting its role in deferring expression evaluation.
- **Inlining Assignments:** Shows how `@autoclosure` simplifies animation code by allowing inline expression evaluation.
- **Passing Errors as Expressions:** Demonstrates using `@autoclosure` for error handling in Swift's Optional type extensions.
- **Type Inference Using Default Values:** Explains how `@autoclosure` aids in type inference and reduces syntax in extracting values from dictionaries.
- **Conclusion:** Emphasizes the benefits of using `@autoclosure` to enhance code readability and performance.

<LinkCard title="Read Full Article" href="https://www.swiftbysundell.com/articles/using-autoclosure-when-designing-swift-apis/" />
