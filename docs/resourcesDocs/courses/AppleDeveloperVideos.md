---
title: Apple Developer Videos
description: Apple Developer Videos is a platform hosting a vast collection of videos for iOS and macOS development. It includes sessions from WWDC, tutorials, and talks on a wide range of topics like Swift, SwiftUI, and ARKit. The content is aimed at developers of all levels, providing insights and best practices for app development.
---

Apple Developer Videos is a platform hosting a vast collection of videos for iOS and macOS development. It includes sessions from WWDC, tutorials, and talks on a wide range of topics like Swift, SwiftUI, and ARKit. The content is aimed at developers of all levels, providing insights and best practices for app development.

<details>
**URL:** https://developer.apple.com/videos/

**Authors:** `Apple Inc.`

**Complexity Levels:**
   - **Beginner:** 30%
   - **Intermediate:** 40%
   - **Advanced:** 30%

**Frequency of Posting:** Annually (WWDC) and occasionally throughout the year.

**Types of Content:**
   - **Sessions:** 60% (WWDC and other events)
   - **Tutorials:** 30% (Step-by-step guides)
   - **News and Updates:** 10% (Industry trends and updates)

**Additional Features:**
   - **Playlists:** Curated playlists for structured learning.
   - **Documentation Links:** Direct links to relevant documentation.
</details>

<LinkCard title="Visit Apple Developer Videos" href="https://developer.apple.com/videos/" />


### Prototype with Xcode Playgrounds
This WWDC 2023 session demonstrates how to accelerate feature development using Xcode Playgrounds. It covers prototyping new code, inspecting UI snapshots, and utilizing live views for complex UI elements, all without rebuilding and relaunching your project.

<details>

**URL:** [Watch the Video](https://developer.apple.com/videos/play/wwdc2023/10250/)

**Published:** 2023-06-05

**Duration:** Approximately 22 minutes

**Creators:** `Apple Inc.`

**Tags:**  
`Xcode`, `Xcode Playgrounds`, `Prototyping`, `iOS Development`

</details>

#### Key Points
- **Prototyping New Features:** Learn to test and iterate on code without rebuilding projects.
- **UI Snapshot Inspection:** Examine and adjust complex UI components directly within Playgrounds.
- **Live View Usage:** Implement and view live updates of UI elements for more efficient debugging.

#### Summary of Contents
- **Exploring Data Models:** Understand how to manipulate and test your data models within Playgrounds.
- **Package Familiarization:** Learn how to integrate and test new packages using Xcode Playgrounds.
- **Live View Integration:** See how live views can enhance your development process by providing immediate feedback on UI changes.

#### Additional Resources
- **HD Video Download:** [Download HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/downloads/wwdc2023-10250_hd.mp4?dl=1)
- **Related Video:** [Explore Packages and Projects with Xcode Playgrounds (WWDC 2020)](https://developer.apple.com/videos/play/wwdc2020/10096)

<LinkCard title="Watch Full Video" href="https://developer.apple.com/videos/play/wwdc2023/10250/" />

### Eliminate Data Races Using Swift Concurrency

In this WWDC 2022 session, **Doug from the Swift team** presents a holistic view of Swift Concurrency and how it helps eliminate data races. Through task isolation and the use of actors, Swift Concurrency ensures safe handling of asynchronous code without risking data corruption. 

<details>

**URL:** [https://developer.apple.com/videos/play/wwdc2022/110351/](https://developer.apple.com/videos/play/wwdc2022/110351/)

**Published:** 2022-06-07

**Duration:** 26 minutes

**Creators:** `Apple`

**Tags:**  
`Swift Concurrency`, `Data Races`, `Actors`, `Tasks`, `Isolation`, `Sendable`

</details>

#### Key Points
- **Task Isolation:** Tasks in Swift are self-contained, running asynchronously and independently to prevent shared mutable data.
- **Actors:** Actors isolate state, ensuring that only one task at a time can access the actor’s state, eliminating data races.
- **Sendable Protocol:** The Sendable protocol is critical for defining types that can be shared safely across tasks and actors.
  
#### Summary of Contents
- **Introduction:** Doug introduces how Swift Concurrency features work together to structure your program in a way that eliminates data races, using a sea-faring analogy to explain task isolation.
- **Main Concepts:**
  - **Task Isolation:** Tasks act like boats on the sea of concurrency, performing work independently. This section explores how tasks can suspend at await points but remain isolated from each other.
  - **Sharing Data Safely:** Doug explains how data, represented by pineapples and chickens, can be shared safely among tasks using value types (like structs), but mutable reference types (like classes) can lead to data races.
  - **Actors:** Using actors, Doug shows how tasks can communicate while maintaining isolation. Actors act like islands, where tasks (boats) visit one at a time.
  - **Sendable Protocol:** Ensures that data shared between tasks or actors is safe and immutable, explaining how Swift enforces Sendability in concurrent systems.
- **Conclusion:** Swift Concurrency's structured approach through task isolation, actors, and the Sendable protocol makes writing concurrent programs safer and more predictable, avoiding common pitfalls like data races.

#### Additional Resources
- [Concurrency in Swift](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html)
- [Visualize and Optimize Swift Concurrency](https://developer.apple.com/videos/play/wwdc2022/110350/)
  
<LinkCard title="Watch Full Video" href="https://developer.apple.com/videos/play/wwdc2022/110351/" />

### Migrate Your App to Swift 6
In this session, Ben from the Swift team explains how to migrate an existing app to Swift 6, focusing on data-race prevention and concurrency safety. Through a detailed walkthrough of the CoffeeTracker app, the video demonstrates how to incrementally enable Swift 6's data isolation features and concurrency checking in both UI and business logic layers.

<details>

**URL:** [https://developer.apple.com/videos/play/wwdc2024/10169](https://developer.apple.com/videos/play/wwdc2024/10169)

**Published:** 2024-06-05

**Duration:** 41 minutes

**Creators:** `Ben (Swift Team)`

**Tags:**  
`Swift`, `Swift 6`, `Concurrency`, `Data Isolation`, `Xcode`, `iOS Development`

</details>

#### Key Points
- **Data Isolation:** Swift 6 ensures thread safety by enforcing data isolation across actors and async/await.
- **Incremental Migration:** Step-by-step guide on enabling concurrency checking and migrating modules to Swift 6.
- **Compiler Support:** The new compiler diagnostics help detect and fix data races.
- **Real-world Example:** Using CoffeeTracker, Ben shows how to adapt an app for Swift 6 without introducing new concurrency bugs.

#### Additional Resources
- **[Swift.org Migration Guide](https://swift.org/migration/):** A comprehensive guide to migrating to Swift 6.
- **[Swift Concurrency (WWDC 2021)](https://developer.apple.com/videos/play/wwdc2021/10151):** A session on adopting Swift’s concurrency features.

<LinkCard title="Watch Full Video" href="https://developer.apple.com/videos/play/wwdc2024/10169" />
