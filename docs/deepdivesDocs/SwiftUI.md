# 🍎🎨 SwiftUI

**Description:**  
This guide covers SwiftUI in detail, from basic concepts to advanced-level features. It’s tailored to help developers master the framework, progressing from simple UI creation to implementing cutting-edge, professional-grade techniques.

### **Beginner: Starting with SwiftUI**
**Objective:** Get comfortable with the basics of SwiftUI and understand its building blocks.

#### 1. What is SwiftUI?  
- Declarative UI explained.  
- Differences from UIKit and storyboards.  
- The reactive nature of SwiftUI and its integration with Combine.

#### 2. Getting Started with SwiftUI  
- Creating your first project and understanding the file structure.  
- Introduction to the preview system for real-time UI updates.  

#### 3. Core SwiftUI Components  
- Building basic views (`Text`, `Image`, `Button`).  
- Stacks: Arranging elements with `HStack`, `VStack`, and `ZStack`.  
- Using modifiers to style views (`.padding`, `.font`, `.foregroundColor`).  

#### 4. State and Data Basics  
- Understanding `@State` and `@Binding`.  
- Building a counter app with reactive updates.  

#### 5. Navigation in SwiftUI  
- Using `NavigationStack` and `NavigationLink` for multi-screen navigation.  

---

### **Intermediate: Building Real-World Apps**
**Objective:** Build complex applications with reusable components and advanced layouts.

#### 6. Advanced Layouts with Grids and Geometry  
- Leveraging `LazyVGrid` and `LazyHGrid` for scalable layouts.  
- Using GeometryReader for adaptive designs.  

#### 7. Managing Data in SwiftUI  
- The MVVM architecture with `@ObservedObject`, `@StateObject`, and `@EnvironmentObject`.  
- Creating data-driven UIs with `ForEach` and dynamic lists.  

#### 8. Animations and Transitions  
- Adding built-in animations (`.animation()`, `.transition()`).  
- Creating custom animations with timing functions and delays.  
- Combining gestures with animations for interactive experiences.

#### 9. Forms and Controls  
- Building interactive forms with sliders, toggles, and steppers.  
- Validating form data with `@State` and `@Binding`.

#### 10. Integrating UIKit and SwiftUI  
- Wrapping UIKit views with `UIViewRepresentable`.  
- Embedding SwiftUI views in UIKit projects using `UIHostingController`.  

---

### **Advanced: Unlocking SwiftUI’s Power**
**Objective:** Master advanced SwiftUI concepts to create efficient and performant apps.

#### 11. Custom Views and Modifiers  
- Creating fully reusable, parameterized views.  
- Writing custom modifiers to encapsulate repetitive styling logic.

#### 12. Advanced Data Flow  
- Sharing complex data across the app with `@EnvironmentObject`.  
- Using Combine to manage state outside of SwiftUI.  
- Handling edge cases in data flow with multiple bindings.

#### 13. Performance Tuning in SwiftUI  
- Identifying bottlenecks with Instruments.  
- Optimizing SwiftUI rendering pipelines for large datasets.  
- Reducing unnecessary re-renders with `EquatableView` and `@ViewBuilder`.  

#### 14. Advanced Animations and Effects  
- Creating complex interactions with `matchedGeometryEffect`.  
- Implementing 3D transformations and rotation effects.  
- Using `Canvas` for custom vector graphics.

---

### **Advanced Pro: Pioneering SwiftUI Applications**
**Objective:** Push the boundaries of what SwiftUI can do, integrating it with cutting-edge technologies.

#### 15. Custom Rendering and Metal Integration  
- Advanced rendering with `Canvas` and shaders.  
- Integrating Metal for GPU-accelerated graphics within SwiftUI.  

#### 16. Real-Time Data and Asynchronous Updates  
- Implementing real-time features with `async/await` and Combine.  
- Combining server-driven UI updates with SwiftUI’s declarative syntax.  
- Handling live updates with WebSockets and SwiftUI views.

#### 17. Modular and Cross-Platform Development  
- Sharing SwiftUI code across iOS, macOS, watchOS, and tvOS.  
- Customizing platform-specific designs with conditional compilation.  
- Building modular architectures with reusable SwiftUI components.

#### 18. Machine Learning in SwiftUI  
- Using Core ML to power intelligent UIs.  
- Generating dynamic content based on user behavior or predictions.  
- Creating personalized experiences with on-device AI and SwiftUI.

#### 19. Testing and Continuous Integration  
- Writing unit and UI tests specifically for SwiftUI.  
- Automating accessibility and performance tests in CI/CD pipelines.  
- Debugging advanced SwiftUI apps with XCTest and Instruments.


### 🟢 Displaying tips based on parameters and events with TipKit

This article explains how to use the **TipKit framework** in a **SwiftUI app** to **trigger tips** based on specific **parameters** and **user events**. The tutorial provides detailed **code examples** demonstrating how to **configure** and **display tips** after certain **actions** are performed by the user or when specific **conditions** are met.

<details>

**URL:** [Displaying tips based on parameters and events with TipKit](https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit/)

**Published:** Jun 29, 2024

**Authors:** `Tiago Gomes Pereira, Matteo Altobello`

**Tags:**  
`SwiftUI`, `TipKit`, `iOS`, `Event-driven`, `Swift`

</details>

#### Key Points
- Demonstrates how to use the **`@Parameter` property wrapper** to control when **tips** are shown in an app.
- Provides a practical example of using the **`Event` type** to display **tips** after a user accesses a view multiple times.
- Emphasizes the importance of resetting the datastore during testing with **`Tips.resetDatastore()`**.

#### Summary of Contents
- **Introduction:** Overview of **TipKit's role** in enhancing user interaction by displaying **context-specific tips**.
- **Parameter Rules:** Explanation and example of how to use **parameters** to **conditionally show tips**.
- **Event-driven Tips:** Guide on setting up **tips** to appear after certain **events** or **user actions** occur multiple times.
- **Conclusion:** Final thoughts on the benefits of using **TipKit** for **user experience improvement** in **SwiftUI apps**.

#### Additional Resources
- **Using TipKit on a SwiftUI app:** [Link to related tutorial](https://www.createwithswift.com/using-tipkit-on-a-swiftui-app/)
- **TipKit Documentation:** [Link to official documentation](https://developer.apple.com/documentation/tipkit?ref=createwithswift.com)

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit/" />

### 🎨 Mastering Blend Modes in SwiftUI

Unlock the creative potential of SwiftUI's blend modes with this in-depth guide! Learn how to use blend modes effectively to create visually stunning interfaces, manipulate images, and add depth to your designs.

<details>

**URL:** https://www.createwithswift.com/mastering-blend-modes-in-swiftui/

**Authors:** `Create With Swift`  

**Tags:**  
`swiftui`, `blend-modes`, `ui-design`, `ios-development`, `visual-effects`

</details>

#### Key Points
- **Blend Mode Basics:**  
  - Blend modes allow combining pixel colors across layers using mathematical formulas.
  - Essential for overlays, lighting effects, and adding texture.
- **Implementation in SwiftUI:**  
  - Utilize `blendMode(_:)` to set blend modes for views.
  - Create effects using pre-defined blend modes such as `.multiply`, `.screen`, `.overlay`, and more.
- **Practical Use Cases:**  
  - Enhance photo manipulation.
  - Create rich visual effects for app backgrounds or UI components.

#### Summary of Contents
- **Understanding Blend Modes:** Explains the RGB model, alpha blending, and their role in creating new color effects.
- **SwiftUI Implementation:** Shows how to use `blendMode(_:)` for applying effects.
- **Categories of Blend Modes:** Discusses modes such as `.darken`, `.lighten`, `.overlay`, and `.hue`, with practical examples.
- **Examples with Code and Images:** Provides code snippets and visuals demonstrating each blend mode in action.

#### Helpful Links
- [SwiftUI `blendMode(_:)` Documentation](https://developer.apple.com/documentation/swiftui/view/blendmode(_:))  
- [SwiftUI `BlendMode` Enumeration](https://developer.apple.com/documentation/swiftui/blendmode)

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/mastering-blend-modes-in-swiftui/" />

### 🔵 Exploring SF Symbol Animations: Enhancing Your App's UI with Built-in Iconography

SF Symbols have revolutionized how iOS developers integrate iconography into their applications. With thousands of symbols available and a growing set of features, they offer a familiar, cohesive experience across Apple's ecosystem. This post explores the evolution of SF Symbols, focusing on the current state of SF Symbol animations and how developers can leverage these new features to create more dynamic and engaging user interfaces.

<details>

**URL:** https://www.donnywals.com/animating-sf-symbols-on-ios-18/

**Published:** 2024-09-18

**Authors:** `Author's Name`

**Tags:**  
`SF Symbols`, `iOS Development`, `Swift`, `UI Design`, `Animations`

</details>

#### Key Points
- **Evolution of SF Symbols:** Initially static, SF Symbols now offer various animation styles and effects that enhance UI design.
- **Simple yet Powerful Animations:** The introduction of symbol effects like `wiggle` and `variableColor` allows developers to animate symbols with minimal code.
- **Layered Animations:** Some symbols contain multiple layers that can be animated independently, offering even more flexibility in visual design.
- **State-Based Transitions:** SF Symbols can seamlessly animate transitions between different states, such as toggling notifications on and off.

#### Summary of Contents
- **Basic SF Symbol Animations:** An introduction to simple SF Symbol animations, demonstrating how easy it is to add animations using `symbolEffect`.
- **Layered Animations in Action:** Explores how symbols like the AirPods Pro case leverage their multiple layers for more complex effects.
- **Animating State Changes:** Discusses how to animate transitions between different symbol states, such as a bell icon indicating notifications.
- **Exploring Symbol Effects:** Encourages developers to experiment with the variety of symbol effects and their parameters, including periodic animations and transitions.

#### Additional Resources
- **SF Symbols 4:** [Apple's official SF Symbols documentation](https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/) for more in-depth guidance on available symbols.
- **SwiftUI Image View:** [Apple's documentation on Image views in SwiftUI](https://developer.apple.com/documentation/swiftui/image) to understand how symbols are integrated into the view hierarchy.

<LinkCard title="Read Full Article" href="https://www.donnywals.com/animating-sf-symbols-on-ios-18/" />

### 🔵 GeometryReader: Blessing or Curse?

**GeometryReader** has been a **staple in SwiftUI** since its inception, but it has also been the subject of significant debate. While some developers criticize it for **disrupting layouts** or causing **performance issues**, others find it **invaluable for certain use cases**. This article delves into the **common criticisms** of GeometryReader and provides a balanced view, examining whether the problems lie with the **tool itself** or with developers' **expectations**.

<details>

**URL:** https://fatbobman.com/en/posts/geometryreader-blessing-or-curse/

**Published:** Nov 9, 2023  
**Updated:** Jun 18, 2024  
**Authors:** `Fatbobman`

**Tags:**  
`SwiftUI`, `GeometryReader`, `iOS Development`, `Layout`, `Performance`

</details>

#### Key Points
- **Criticism of GeometryReader:** Common issues include **layout disruption**, **incorrect geometry information**, **rigidity in view layouts**, and **performance concerns**.
- **Understanding GeometryReader:** It is primarily a tool for **reading geometry information**, not necessarily for **defining layouts**, which is often misunderstood.
- **Layout Logic and Use Cases:** GeometryReader **occupies all available space** and **aligns child views at the origin**, making it suitable for certain tasks but not as a **general-purpose layout container**.
- **Performance Considerations:** Proper use of GeometryReader, especially with **new SwiftUI APIs**, can mitigate **performance issues** that arise from incorrect or **excessive use**.
- **Alternatives:** SwiftUI now offers more **refined tools for layout**, reducing the need to rely heavily on **GeometryReader**.

#### Summary of Contents
- **Introduction to GeometryReader:** Overview of its role in **SwiftUI** and the reasons behind its **divisive reputation**.
- **Common Criticisms:** Detailed examination of the most frequent complaints about **GeometryReader**, including its impact on **layout** and **performance**.
- **What GeometryReader Really Does:** Clarification of its purpose as a **geometry information reader**, not a **layout tool**.
- **Is GeometryReader a Layout Container?** Exploration of how **GeometryReader handles layout** and when it should be used as a **container**.
- **Correct Usage Patterns:** Examples and tips for using **GeometryReader effectively** without falling into common traps.
- **Performance Issues and Solutions:** Discussion of how to avoid **performance pitfalls** when using **GeometryReader**, especially in **complex layouts**.
- **Alternatives to GeometryReader:** Overview of other **SwiftUI tools** that can achieve similar goals more **efficiently**.

#### Additional Resources
- **[SwiftUI Layout: The Mystery of Size](https://fatbobman.com/en/posts/layout-dimensions-1/):** A deep dive into **SwiftUI's layout system**.
- **[Several Ways to Center Views in SwiftUI](https://fatbobman.com/en/posts/centering_the_view_in_swiftui/):** Tips and techniques for **centering views** in different scenarios.
- **[Safely Updating The View State](https://swiftui-lab.com/state-changes/):** Best practices for managing **state changes** in **SwiftUI**.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/geometryreader-blessing-or-curse/" />

### 🔴 Layout in SwiftUI Way
This article by **Fatbobman** demonstrates the **power and flexibility** of **SwiftUI's layout system** by showcasing multiple ways to achieve the same layout. It helps developers gain a better understanding of **SwiftUI's layout logic** through various approaches, making it a valuable read for those working with **complex UI designs** in **SwiftUI**.

<details>

**URL:** https://fatbobman.com/en/posts/layout-in-swiftui-way/

**Published:** March 1, 2023

**Authors:** `Fatbobman`

**Tags:**  
`SwiftUI`, `iOS`, `Layout`, `UI Development`

</details>

#### Key Points
- Demonstrates **multiple layout solutions** for the same **UI requirement**, highlighting **SwiftUI's flexibility**.
- Explains the use of techniques such as **`offset`**, **`alignmentGuide`**, **`NameSpace`**, **`ScrollView`**, and **custom Layout protocols**.
- Provides **in-depth code examples** for each approach, making it easier for developers to apply these techniques in their projects.

#### Summary of Contents
- **Introduction:** The article begins by addressing common concerns about **SwiftUI's capabilities** in handling **complex layouts** and sets the stage for the solutions provided.
- **Various Approaches:** The main content is structured around different layout techniques, including **`offset`**, **`alignmentGuide`**, **`NameSpace`**, **`ScrollView`**, and **layout priority management**, each with detailed explanations and **code snippets**.
- **Custom Layout Protocol:** A deeper dive into creating **custom layouts** using **SwiftUI's Layout protocol**, offering a more advanced solution for specific scenarios.
- **Conclusion:** Emphasizes that the upper limit of **layout ability** depends on the developer's understanding of the tools **SwiftUI** provides.

#### Additional Resources
- **[SwiftUI Layout: The Mystery of Size](https://fatbobman.com/en/posts/layout-dimensions-1/):** Further reading on **SwiftUI layout dimensions** and **size management**.
- **[In-Depth Exploration of Overlay and Background Modifiers in SwiftUI](https://fatbobman.com/en/posts/in-depth-exploration-of-overlay-and-background-modifiers-in-swiftui/):** A related post that discusses **overlay and background modifiers** in detail.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/layout-in-swiftui-way/" />

### 🔵 How to Tile Images in SwiftUI
This article, authored by **Fatbobman** and published on **July 31, 2024**, explores various methods to achieve **image tiling** in **SwiftUI**, moving beyond the commonly known **`resizable` modifier**. The post introduces more advanced techniques, such as using the **`foregroundStyle` modifier** with **`ImagePaint`**, and discusses a **custom approach** for tiling **SF Symbols** across different **iOS versions**. The insights provided are valuable for developers looking to enhance their **SwiftUI capabilities**, especially in scenarios requiring **precise image control** and **flexibility**.

<details>

**URL:** https://fatbobman.com/en/posts/how-to-tile-images-in-swiftui/

**Published:** July 31, 2024

**Authors:** `Fatbobman`

**Tags:**  
`SwiftUI`, `iOS Development`, `Image Tiling`

</details>

#### Key Points
- **`resizable` Modifier:** Commonly used for **tiling images**, but has limitations such as difficulty **adjusting image size** and only working with **`Image` types**.
- **`foregroundStyle` Modifier with `ImagePaint`:** A more flexible and **SwiftUI-styled** approach that offers greater **control** over the **tiling process**.
- **Custom Image Creation:** Techniques for creating **custom images** to tile **SF Symbols** across different **iOS versions**, ensuring **compatibility** and retaining **symbol control features**.

#### Summary of Contents
- **Resizable Modifier:** Describes the usage of **`resizable`** with **`resizingMode: .tile`**, highlighting its **advantages** and **limitations**.
- **ForegroundStyle with ImagePaint:** Explains how to use **`foregroundStyle`** and **`ImagePaint`** for more **controllable** and **intuitive image tiling** in **SwiftUI**.
- **Custom Image for SF Symbols:** Discusses creating **custom images** for **SF Symbols** to achieve **tiling** while maintaining **full control** over **symbol attributes** across different **iOS versions**.

#### Additional Resources
- **[Several Ways to Center Views in SwiftUI](https://fatbobman.com/en/posts/centering_the_view_in_swiftui/):** An exploration of various techniques to **center views** in **SwiftUI**.
- **[Mixing Text and Image in SwiftUI](https://fatbobman.com/en/posts/mixing_text_and_graphics_with_text_in_swiftui/):** Tips and tricks for **combining text and images** effectively in **SwiftUI**.
- **[Mastering Safe Area in SwiftUI](https://fatbobman.com/en/posts/safearea/):** A deep dive into managing the **safe area** in **SwiftUI layouts**.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/how-to-tile-images-in-swiftui/" />

### 🔵 Understanding SwiftUI View Update Mechanism

This article explores how SwiftUI's declarative and reactive approach enables automatic view updates, focusing on an intriguing `TimelineView` issue. It delves into key concepts like view types, declarations, and instances to explain why some views update as expected while others remain static. This understanding is critical for writing performant SwiftUI applications.

<details>

**URL:** [Understanding SwiftUI View Update Mechanism](https://fatbobman.com/en/posts/understanding-swiftui-view-update-mechanism/)

**Published:** 2024-11-13

**Authors:** `FatBobMan`

**Tags:**  
`SwiftUI`, `view updates`, `TimelineView`, `reactive programming`, `iOS development`

</details>

#### Key Points
- **Reactive Framework:** SwiftUI updates views reactively based on state and events.
- **View Declaration and Updates:** Changes in state or specific conditions trigger view re-evaluation.
- **View Instance Value Comparison:** SwiftUI optimizes updates by comparing current and previous instance values.
- **Common Pitfall:** Encapsulated views (e.g., `RightEmoji`) may not update if their instance value remains static.

#### Summary of Contents
- **The Problem:** A `TimelineView` exhibits inconsistent emoji updates due to how SwiftUI determines when to re-evaluate views.
- **Core Concepts:** Explains view types, declarations, and instance values and their role in updates.
- **Analyzing SwiftUI's Response Mechanism:** Describes how events like state changes trigger view updates.
- **Conditions for Re-Evaluation:** Outlines when and why SwiftUI re-evaluates view declarations.
- **The Solution:** Shows how introducing randomness changes the instance value, forcing updates.
- **Performance Tips:** Advice for optimizing view declarations and minimizing unnecessary computations.

#### Additional Resources
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui):** Official guide to SwiftUI concepts.
- **[Understanding State and Binding](https://developer.apple.com/documentation/swiftui/state-and-data-flow):** Details on managing state in SwiftUI.
- **[Reactive Programming in Swift](https://www.raywenderlich.com/10050020-reactive-programming-in-swift):** Insights into the reactive paradigm in Swift.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/understanding-swiftui-view-update-mechanism/" />

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

### 🔵 Download view with button and animated circle

This post presents a custom **iOS UI component** that combines a **download button** with an **animated circular progress indicator**. The project was developed based on instructions from a **YouTube channel**, providing a **visual and interactive element** that enhances user experience during download processes. The post includes links to the **GitHub repository** for accessing the full code and offers **images showcasing the component's design and functionality**.

<details>

**URL:** [Download view with button and animated circle](https://iosexample.com/download-view-with-button-and-animated-circle/)

**Published:** September 5, 2023

**Authors:** `Not specified`

**Tags:**  
`Buttons`, `Circular`, `UI`, `iOS`, `SwiftUI`

</details>

#### Key Points
- **Custom iOS UI component** integrating a **download button** with an **animated circular indicator**.
- Developed following **YouTube instructions**, offering a **visual element** to represent **download progress**.
- Includes **images** to visually demonstrate the component's functionality.

#### Summary of Contents
- **Introduction:** Overview of the **custom UI component** and its purpose.
- **Images:** **Visual representations** of the button and circle animation in action.
- **GitHub Link:** Access to the **source code** and further project details.

#### Additional Resources
- **GitHub Repository:** [View Github](https://github.com/diasatudinov/DownloadButton?ref=iosexample.com)

<LinkCard title="Read Full Article" href="https://iosexample.com/download-view-with-button-and-animated-circle/" />

### 🔵 SwiftUI Hero Animations with NavigationTransition

This article provides an in-depth guide on **replicating the App Store's hero animation** using **SwiftUI's new `NavigationTransition` protocol**, introduced in **iOS 18**. It covers the **implementation process** step by step, focusing on creating **smooth** and **visually appealing transitions** between views in a **SwiftUI app**. The tutorial also includes instructions on **customizing the source view appearance**, adding **dismiss buttons**, enabling **drag-to-dismiss functionality**, and **scaling down views** during interaction. This guide is ideal for developers looking to enhance their **SwiftUI applications** with **dynamic UI animations**.

<details>

**URL:** [SwiftUI Hero Animations with NavigationTransition](https://peterfriese.dev/blog/2024/hero-animation/)

**Published:** Jun 21, 2024

**Authors:** `Peter Friese`

**Tags:**  
`SwiftUI`, `iOS 18`, `UI Animation`, `NavigationTransition`

</details>

#### Key Points
- Demonstrates how to **replicate the App Store’s hero animation** using **SwiftUI’s `NavigationTransition` protocol**.
- Covers **customization of the source view appearance** for a more **visually appealing transition**.
- Explains the addition of a **dismiss button** and **drag-to-dismiss functionality** for enhanced **user experience**.
- Shows how to **implement scaling down effects** on the views during **user interaction**.

#### Summary of Contents
- **Replicating the App Store Hero Animation:** Overview of the **hero animation** and its importance in **visually rich UIs**. Introduction to using the **`NavigationTransition` protocol** in **SwiftUI**.
- **Zooming from Zero to Hero:** Step-by-step guide to **setting up the basic hero animation** with **SwiftUI**, including **code snippets** and explanations.
- **Adjusting the Appearance of the Source View:** Instructions on **customizing the source view appearance** using the **`matchedTransitionSource` modifier**.
- **Adding a Dismiss Button:** How to create a **dismiss button** that overlays the content and removes the **navigation bar**.
- **Dragging Down to Dismiss:** Implementation of the **drag-to-dismiss feature** using the **`onScrollGeometryChange` view modifier**.
- **Scaling Down:** Guide to applying **scaling effects** to the views as they are **dragged down**, enhancing the **interactive experience**.

#### Additional Resources
- **Building Reusable SwiftUI Components:** [Interactive tutorial on building custom SwiftUI components](https://peterfriese.dev/tutorials/)
- **Styling SwiftUI Views:** [How does view styling work?](https://peterfriese.dev/blog/2023/swiftui-styling-views)

<LinkCard title="Read Full Article" href="https://peterfriese.dev/blog/2024/hero-animation/" />

### 🟢 Recreating iOS Style Welcome Screen

This blog post by **Nav Singh** provides a step-by-step guide on how to **recreate the iOS-style Welcome Screen** using **SwiftUI** and **Xcode**. It is ideal for **iOS developers** looking to understand the implementation of modern **UI elements** using **SwiftUI**. The post includes a **video tutorial**, **sample code** available on **GitHub**, and **visual examples** of the final result.

<details>

**URL:** https://recreatecode.substack.com/p/recreating-ios-style-welcome-screen

**Published:** August 27, 2020

**Authors:** `Nav Singh`

**Tags:**  
`SwiftUI`, `iOS Development`, `Xcode`, `User Interface`, `Tutorial`

</details>

#### Key Points
- **SwiftUI Implementation:** The tutorial covers the complete process of **implementing** a **welcome screen** using **SwiftUI**, demonstrating how to leverage **SwiftUI’s declarative syntax**.
- **Xcode Usage:** The post guides readers through **setting up the project** in **Xcode**, making it accessible for both **beginners** and **experienced developers**.
- **Visual Examples:** The **final implementation** is showcased through **images**, helping readers **visualize** the **end result**.

#### Summary of Contents
- **Introduction:** An overview of the tutorial’s objectives, emphasizing the importance of **mastering SwiftUI** for modern **iOS development**.
- **Setup in Xcode:** Detailed steps on how to **create** and **configure** a new **SwiftUI project** in **Xcode**, including tips on **layout** and **design**.
- **Building the Welcome Screen:** A walkthrough of the **code** needed to build the **Welcome Screen**, with explanations for each section of the **code**.
- **Final Touches:** Suggestions for **refining the design** and ensuring the **welcome screen** functions **smoothly across different devices**.
- **Conclusion:** Recap of the key learning points and encouragement to **experiment** with the provided **code**.

#### Additional Resources
- **[GitHub Repository](https://gist.github.com/navsing/780d96581b3dcbc73b6998fa39b51960):** Access the **full code** used in the tutorial.
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui):** Official Apple documentation for **SwiftUI**, providing deeper insights into the framework’s capabilities.

<LinkCard title="Read Full Article" href="https://recreatecode.substack.com/p/recreating-ios-style-welcome-screen" />

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

### 🔴 Mastering ScrollView in SwiftUI. Target Behavior

This article explores the new APIs introduced by Apple in SwiftUI to enhance the functionality of `ScrollView`. It focuses on customizing the scroll target and snapping behavior using the `scrollTargetBehavior` view modifier. The discussion includes examples of how to apply different target behaviors and create custom ones by conforming to the `ScrollTargetBehavior` protocol.

<details>

**URL:** [Mastering ScrollView in SwiftUI. Target Behavior](https://swiftwithmajid.com/2023/06/20/mastering-scrollview-in-swiftui-target-behavior/)

**Published:** 2023-06-20

**Authors:** `Majid Jabrayilov`

**Tags:**  
`SwiftUI`, `ScrollView`, `iOS Development`, `UI`, `API`

</details>

#### Key Points
- **Introduction of new APIs**: The article highlights the new APIs added by Apple to the `ScrollView` in SwiftUI, focusing on target behavior and snapping.
- **Custom Scroll Targets**: It discusses how to customize scroll behavior using the `scrollTargetBehavior` view modifier, providing examples with `paging` and `viewAligned` options.
- **Creating Custom Behaviors**: A detailed example is given on how to create custom scrolling behavior by conforming to the `ScrollTargetBehavior` protocol.

#### Summary of Contents
- **Overview of New ScrollView Features**: Introduction to the new features and APIs in `ScrollView`.
- **Using `scrollTargetBehavior` Modifier**: How to apply the `scrollTargetBehavior` view modifier with different target behaviors such as `paging` and `viewAligned`.
- **Custom Scroll Behavior Implementation**: Step-by-step guide to creating custom scroll target behavior by implementing the `ScrollTargetBehavior` protocol.

#### Additional Resources
- **[Mastering ScrollView in SwiftUI. Transitions](https://swiftwithmajid.com/2023/06/13/mastering-scrollview-in-swiftui-transitions/)**: A related post on how to handle transitions in `ScrollView`.

<LinkCard title="Read Full Article" href="https://swiftwithmajid.com/2023/06/20/mastering-scrollview-in-swiftui-target-behavior/" />

### 🔵 Tracking Geometry Changes in SwiftUI

This article discusses how to track geometry changes of any view in SwiftUI using the new `onGeometryChange` view modifier introduced at WWDC. The article also highlights its backward compatibility with earlier versions of iOS, macOS, tvOS, watchOS, and visionOS. Additionally, practical code examples demonstrate how this feature can enhance your SwiftUI development workflow by reducing direct usage of the `GeometryReader` type.

<details>

**URL:** https://swiftwithmajid.com/2024/08/13/tracking-geometry-changes-in-swiftui/

**Published:** 2024-08-13

**Authors:** `Majid Jabrayilov`

**Tags:**  
`SwiftUI`, `iOS Development`, `GeometryProxy`, `WWDC 2024`

</details>

#### Key Points
- The `onGeometryChange` view modifier allows tracking geometry changes in SwiftUI.
- It is backward compatible with iOS 16, macOS 13, tvOS 16, watchOS 9, and visionOS 1.
- The modifier improves performance by reducing the need for `GeometryReader` and only runs updates when necessary.

#### Summary of Contents
- **Introduction to `onGeometryChange`:** Overview of the new `onGeometryChange` view modifier and its importance in tracking geometry changes in SwiftUI views.
- **Backward Compatibility:** Discussion on how this feature is backward compatible with earlier versions of Apple platforms.
- **Practical Code Examples:** Step-by-step demonstration of using `onGeometryChange` in real-world scenarios, including scroll offset tracking.
- **Performance Considerations:** Tips on optimizing the usage of `onGeometryChange` to avoid performance issues by limiting updates to the necessary parts of your app.

#### Additional Resources
- **[How to use GeometryReader without breaking SwiftUI layout](https://swiftwithmajid.com/2020/11/04/how-to-use-geometryreader-without-breaking-swiftui-layout/):** A detailed guide on effectively using `GeometryReader` in SwiftUI.
- **[SwiftUI Official Documentation](https://developer.apple.com/documentation/swiftui):** Official SwiftUI documentation by Apple.

<LinkCard title="Read Full Article" href="https://swiftwithmajid.com/2024/08/13/tracking-geometry-changes-in-swiftui/" />


### 🔵 Double Optional Bindings or Something idk

This article explores a **SwiftUI pattern** involving **double optionals**, used in a project to manage the **state of a sheet** that either **creates a new item** or **edits an existing one**. By using an **optional of an optional type**, the code can **signal whether to show the sheet** and whether the sheet is in **creation or editing mode**.

<details>

**URL:** https://phlippieb.dev/posts/double-optional-bindings/

**Published:** June 25, 2024

**Authors:** `Phlippie Bosman`

**Tags:**  
`Swift`, `SwiftUI`, `Optional`, `State Management`

</details>

#### Key Points
- **Double Optionals in SwiftUI:** The article introduces a pattern where an **optional of an optional type** is used to control both the **visibility** and **mode (create or edit)** of a **SwiftUI sheet**.
- **Use Case:** This pattern is particularly useful in scenarios where a view needs to **switch between creating a new item and editing an existing one**.
- **SwiftUI Integration:** The pattern is integrated into SwiftUI using the `.sheet(item:)` modifier, which automatically presents a view when the **bound state is non-nil**.

#### Summary of Contents
- **Introduction:** The post begins by explaining the context in which the author discovered the **double optional pattern** while working on a **SwiftUI app**.
- **Main Body:** Detailed explanation of how the pattern works, including **Swift code snippets** that demonstrate the use of **double optionals** to manage **sheet presentation** and **mode (create/edit)**.
- **Conclusion:** The article concludes with a reflection on the "freaky" nature of **double optionals** and their utility in **SwiftUI** for managing **complex state scenarios**.

#### Additional Resources
- **SwiftUI Documentation:** [SwiftUI Framework Documentation](https://developer.apple.com/documentation/swiftui)
- **Optional Binding in Swift:** [Understanding Optional Binding](https://developer.apple.com/documentation/swift/optional)

<LinkCard title="Read Full Article" href="https://phlippieb.dev/posts/double-optional-bindings/" />

### 🔵 Enhancements in Pulse 3.2: Advanced Search, List Management, and More

This blog post dives into the exciting new features introduced in **Pulse version 3.2**, focusing on the **revamped search functionality**, **optimized list performance**, and new tools for **sorting and grouping logs**. These enhancements, made possible by **SwiftUI's `.searchable` modifier** and other innovations, significantly improve the **usability** and **efficiency** of **Pulse** for **iOS developers**.

<details>

**URL:** https://kean.blog/post/pulse-search

**Published:** **January 24, 2023**

**Authors:** `Alex Grebenyuk`

**Tags:**  
`iOS`, `SwiftUI`, `Pulse`, `Search`, `UI Components`

</details>

#### Key Points
- **SwiftUI `.searchable` modifier:** A powerful tool introduced in **iOS 15**, now enhanced with **token support** in **iOS 16**, streamlining the **search experience** in **Pulse**.
- **Optimized List Handling:** Overcomes **performance issues** in **List** by limiting the displayed items and using **dynamic loading** as users scroll, ensuring **smooth performance**.
- **Advanced Grouping and Sorting:** New toolbar features allow for detailed **grouping** and **sorting** of logs, helping developers quickly find the information they need.
- **Pinning for Quick Access:** Reintroduced **pins feature**, allowing important logs to be **pinned** and easily accessed.

#### Summary of Contents
- **Introduction to Pulse 3.2:** Overview of the major updates, emphasizing the role of **search** and **list management** in improving **user experience**.
- **Search Enhancements:** Detailed look at how the **`.searchable` modifier** and **tokenization** enhance **search capabilities**.
- **Handling Large Lists:** Explanation of the strategy used to **optimize list performance**, including the decision to revert to **UITableView** for heavy lifting.
- **Grouping and Sorting:** Insight into the new **grouping** and **sorting** functionalities, especially the **“Group by Session”** feature.
- **Reintroduction of Pins:** Description of the **pins feature**, highlighting its utility for developers.

#### Additional Resources
- **[Apple’s “Adding Search to Your App”](https://developer.apple.com/documentation/swiftui/adding-search-to-your-app):** Official documentation on the **`.searchable` modifier**.
- **[Pulse GitHub Repository](https://github.com/kean/Pulse):** Access to the source code and further details about **Pulse**.
- **[Regex Combinators](https://kean.blog/post/regex-parser):** Background on the **parser combinators** used in **Pulse’s search feature**.

<LinkCard title="Read Full Article" href="https://kean.blog/post/pulse-search" />

### 🔵 Understanding SwiftUI's PreferenceKeys

The article explains how the **`PreferenceKey` protocol** in **SwiftUI** allows **child views** to send **values up the view hierarchy** to **parent views**, which is the opposite of how **Environment variables** work, where **data flows down** the hierarchy. This technique is essential for cases where **data** needs to be **passed upwards** without relying on **state variables** or **bindings**.

<details>

**URL:** https://swiftlogic.io/posts/understanding-swiftui-preferencekeys/

**Published:** Jul 21, 2024

**Authors:** `Osaretin Uyigue`

**Tags:**  
`swift`, `swiftui`, `ios development`, `preference keys`, `data flow`, `data binding`

</details>

#### Key Points
- **PreferenceKey Protocol:** Enables the **upward flow of data** in **SwiftUI**, contrary to the typical **downward data flow**.
- **Custom `PreferenceKeys`:** Demonstrated with examples, allowing **child views** to communicate their **heights** to a **parent view**.
- **Real-World Use:** Includes a practical example of a **custom navigation title** that leverages **`PreferenceKeys`**.

#### Summary of Contents
- **How it Works:** An overview of how **data** typically **flows in SwiftUI** and how **`PreferenceKeys`** invert this flow.
- **How `PreferenceKeys` Work:** A breakdown of the **`PreferenceKey` protocol** and how it allows **child views** to send **values upwards**.
- **Creating a Custom `PreferenceKey`:** Step-by-step guide to creating a **custom `PreferenceKey`** to pass **data up the view hierarchy**.
- **Using `PreferenceKeys` in Views:** An example implementation showing how to use **`PreferenceKeys`** in **child** and **parent views**.
- **Real-World Use Case:** A demonstration of using **`PreferenceKeys`** to set a **custom navigation title** in a **SwiftUI view**.

#### Additional Resources
- **[Leveraging ToolbarContentBuilder to Refactor Your SwiftUI Toolbar Code](https://swiftlogic.io/posts/toolbar-content-builder/):** Discusses the use of **`ToolbarContentBuilder`**, another powerful tool in **SwiftUI**.
- **[How to Inject Dependencies into SwiftUI @StateObject](https://swiftlogic.io/posts/stateobject-di/):** A tutorial on **dependency injection** with **`@StateObject`** in **SwiftUI**.

<LinkCard title="Read Full Article" href="https://swiftlogic.io/posts/understanding-swiftui-preferencekeys/" />

### 🔵 Customizing the Appearance of Symbol Images in SwiftUI

This blog post by **Natalia Panferova** provides a comprehensive guide on **customizing SF Symbols** in **SwiftUI**. The article covers essential techniques such as **adjusting symbol size**, **color customization**, **rendering modes**, **variable values**, and **design variants** to enhance the **visual consistency** and **user experience** in **iOS apps**. By following these methods, developers can create **more intuitive** and **visually appealing** interfaces.

<details>

**URL:** https://nilcoalescing.com/blog/CustomizingTheAppearanceOfSymbolImagesInSwiftUI/

**Published:** July 22, 2024

**Authors:** `Natalia Panferova`

**Tags:**  
`SwiftUI`, `iOS`, `SF Symbols`, `UI Design`, `Swift`

</details>

#### Key Points
- **Size Adjustment:** Learn how to scale **SF Symbols** in **SwiftUI** by using the `**font()**` and `**imageScale()**` modifiers.
- **Color Customization:** Explore how to apply **colors** and **gradients** to symbols using the `**foregroundStyle()**` modifier.
- **Rendering Modes:** Understand different **rendering modes** like **Monochrome**, **Hierarchical**, **Palette**, and **Multicolor**, and how they impact **symbol appearance**.
- **Variable Values:** Discover how to **dynamically change** a symbol’s appearance based on **state** using **variable values**.
- **Design Variants:** Utilize **design variants** like **fill** and **slash** to communicate different **states** or **actions** in your UI.

#### Summary of Contents
- **Size:** Techniques for **scaling** and adjusting the **weight** of symbols in **SwiftUI** to ensure **visual consistency**.
- **Color:** **Customizing symbol colors**, including the use of **gradients** and other `**ShapeStyle**` options.
- **Rendering Modes:** Detailed explanation of different **rendering modes** and their practical applications in **UI design**.
- **Variable Value:** How to use **variable values** to represent **dynamic states** in your app, such as **volume** or **battery level**.
- **Design Variants:** Applying **design variants** like **fill**, **slash**, and **enclosures** to **SF Symbols** for enhanced **UI clarity**.

#### Additional Resources
- **Enhanced replace transition for SF Symbols in iOS 18:** [Learn more about advanced transitions for SF Symbols](https://nilcoalescing.com/blog/EnhancedReplaceTransitionForSFSymbolsInIOS18)
- **Reading and setting color scheme in SwiftUI:** [Guide on handling color schemes in SwiftUI](https://nilcoalescing.com/blog/ReadingAndSettingColorSchemeInSwiftUI)

<LinkCard title="Read Full Article" href="https://nilcoalescing.com/blog/CustomizingTheAppearanceOfSymbolImagesInSwiftUI/" />

### 🔵 How to Customise the SwiftUI List Style and Background Color

This article dives deep into **customizing the appearance of SwiftUI List views**. The tutorial covers how to **adjust list background colors**, **modify separators**, and **use custom cells**. With step-by-step examples, you’ll learn how to make your List views stand out with **unique styles beyond the default options provided by SwiftUI**. Whether you're new to SwiftUI or looking to refine your UI design skills, this guide is packed with **practical tips and code snippets**.

<details>

**URL:** https://www.swiftyplace.com/blog/customise-list-view-appearance-in-swiftui-examples-beyond-the-default-stylings

**Published:** 2023-02-01

**Authors:** `Karin Prater`

**Tags:**  
`SwiftUI`, `iOS Development`, `UI Design`, `List Customization`

</details>

#### Key Points
- Learn how to **customize SwiftUI List styles**, including **background colors**, **separators**, and **insets**.
- Practical **code snippets** for implementing **unique list styles**.
- Detailed examples of **customizing list row height** and modifying **section headers and footers**.

#### Summary of Contents
- **Example Data Structure:** Introduction to a custom `Food` struct used throughout the examples.
- **Using a Custom Cell:** How to create and implement **custom cells** in your List view.
- **List Separators:** Techniques for **hiding** and **coloring** row and section separators.
- **List Row Size and Insets:** **Adjusting row height** and modifying **insets** for a more polished look.
- **Changing the SwiftUI List Background Color:** Methods for changing both **list** and **cell background colors**.
- **Extravagant Example:** A showcase of the full range of **customizations possible** with SwiftUI Lists.

#### Additional Resources
- **[SwiftUI List View: A Deep Dive into one of the most important components of SwiftUI.](https://www.swiftyplace.com/blog/swiftui-list-view-a-deep-dive-into-one-of-the-most-important-components-of-swiftui):** A comprehensive guide to understanding SwiftUI List views.
- **[SwiftUI Layout Cookbook](https://www.swiftyplace.com/free-swiftui-layout-cookbook):** A free mini-book to **master SwiftUI layouts**.

<LinkCard title="Read Full Article" href="https://www.swiftyplace.com/blog/customise-list-view-appearance-in-swiftui-examples-beyond-the-default-stylings" />

### 🔵 Programmatically Trigger SwiftUI Actions

This article discusses five different methods to programmatically trigger actions in SwiftUI, focusing on the onChange operator introduced in SwiftUI 2.0. It explores options ranging from basic boolean state management to advanced techniques using Combine and @Published properties.

<details>

**URL:** https://betterprogramming.pub/programmatically-trigger-swiftui-actions-be2dcb8acf0d

**Published:** 2020-09-14

**Authors:** `Mark Lucking`

**Tags:**  
`SwiftUI`, `iOS Development`, `State Management`, `Swift`

</details>

#### Key Points
- **SwiftUI State Management:** The article delves into various techniques for managing state and triggering UI changes in SwiftUI.
- **onChange Operator:** It highlights the new `onChange` operator in SwiftUI 2.0 and its applications.
- **Advanced State Control:** Options 4 and 5 demonstrate more advanced state management strategies using `@Published` and `Combine`.

#### Summary of Contents
- **Introduction:** Overview of the need for triggering actions in SwiftUI, especially with the advent of SwiftUI 2.0.
- **Option 1:** Simple boolean state control for toggling UI elements based on a timer.
- **Option 2:** Enhanced state control using `onAppear` and `onDisappear` with the id modifier for more responsive UI updates.
- **Option 3:** Introduction of `onChange` to directly observe and react to state changes within a view.
- **Option 4:** Using `@Published` and `ObservableObject` to manage state across multiple views without tightly coupling them.
- **Option 5:** Utilizing Combine’s `PassthroughSubject` for even looser coupling and greater control over state-driven actions.

#### Additional Resources
- **SwiftUI Documentation:** [SwiftUI 2.0 Overview](https://developer.apple.com/documentation/swiftui)
- **Combine Framework:** [Introduction to Combine](https://developer.apple.com/documentation/combine)

<LinkCard title="Read Full Article" href="https://betterprogramming.pub/programmatically-trigger-swiftui-actions-be2dcb8acf0d" />

### 🟢 ScrollPosition for ScrollView in iOS 17 and SwiftUI 5

This article discusses the new `scrollPosition` modifier in SwiftUI 5, introduced with iOS 17, which allows developers to control the initial scroll position within a `ScrollView`. The post includes code examples demonstrating how to implement this feature in various scenarios, such as creating a chat interface that starts at the bottom of the conversation.

<details>

**URL:** [Link to the original blog post](https://medium.com/devtechie/scrollposition-for-scrollview-in-ios-17-and-swiftui-5-d8f16707679b)

**Published:** 2023-08-02

**Authors:** `DevTechie`

**Tags:**  
`SwiftUI`, `iOS Development`, `iOS 17`, `ScrollView`, `Swift`

</details>

#### Key Points
- The `scrollPosition` modifier in SwiftUI 5 enables developers to set the initial scroll position in a `ScrollView`.
- It can be used to replicate UI patterns like starting a conversation view from the bottom, similar to Apple's Messages app.
- The modifier supports various anchor points such as `.top`, `.center`, and `.bottom`, and it can be applied to both vertical and horizontal scrolls.

#### Summary of Contents
- **Introduction to scrollPosition Modifier:** This section introduces the `scrollPosition` modifier and its significance in controlling the scroll view's initial position.
- **Chat Interface Example:** Detailed example of creating a chat interface where the scroll starts at the bottom, mimicking the behavior of messaging apps.
- **Application in Horizontal Scroll:** Discusses how to apply `scrollPosition` to horizontal scrolls, including examples with images.
- **Advanced Use Cases:** Explores other use cases, such as centering content in both horizontal and vertical scroll views.

#### Additional Resources
- **SwiftUI Documentation:** [SwiftUI `ScrollView` documentation](https://developer.apple.com/documentation/swiftui/scrollview)
- **iOS 17 Developer Preview:** [Official Apple documentation for iOS 17](https://developer.apple.com/ios/)

<LinkCard title="Read Full Article" href="https://medium.com/devtechie/scrollposition-for-scrollview-in-ios-17-and-swiftui-5-d8f16707679b" />


### 🟢 3 Ways to Share State in SwiftUI That You Need to Know

This blog post explores various strategies for sharing state between views in SwiftUI, highlighting common patterns and best practices. We will dive into techniques like using singletons, dependency injection, environment objects, and stores, providing code examples and discussing the pros and cons of each approach.

<details>

**URL:** https://dev.to/amodrono/3-ways-to-share-state-in-swiftui-that-you-need-to-know-1ink

**Published:** 2024-09-01

**Authors:** `Amodrono`

**Tags:**  
`SwiftUI`, `iOS`, `State Management`, `Dependency Injection`, `EnvironmentObject`

</details>

#### Key Points
- Understanding different methods to share state between views in SwiftUI.
- Singleton patterns for global state access.
- Dependency injection to maintain loosely coupled components.
- Utilizing `@EnvironmentObject` for shared data across multiple views.
- Implementing stores to manage complex state across an application.

#### Summary of Contents
- **Introduction:** A brief overview of the importance of state management in SwiftUI and why it’s crucial to have clean and maintainable code.
- **Solution 1: Singletons:** Discussion on the singleton pattern, its implementation in SwiftUI, and scenarios where it’s most appropriate.
- **Solution 2: Dependency Injection:** Explanation of dependency injection, with examples on how to pass view models down the view hierarchy.
- **Using Environment Objects:** Introduction to `@EnvironmentObject` and how it simplifies state management across multiple views.
- **Solution 3: Stores:** Detailed look at using a store pattern, inspired by Redux, for managing complex state in SwiftUI applications.
- **Conclusion:** A summary of the best practices and recommendations for managing state in SwiftUI.

<LinkCard title="Read Full Article" href="https://dev.to/amodrono/3-ways-to-share-state-in-swiftui-that-you-need-to-know-1ink" />

### 🔵 Global Sheets Pattern in SwiftUI

Managing sheet presentations in SwiftUI can become cumbersome, especially when scaling your app to include multiple sheets across different screens. This article introduces the Global Sheets Pattern, which simplifies sheet management by centralizing logic and streamlining code, making your app more maintainable and scalable.

<details>

**URL:** https://azamsharp.com/2024/08/18/global-sheets-pattern-swiftui.html

**Published:** 2023-09-18

**Authors:** `AzamSharp`

**Tags:**  
`SwiftUI`, `Swift`, `iOS`, `State Management`, `UI Patterns`

</details>

#### Key Points
- The **Global Sheets Pattern** reduces redundancy by centralizing sheet management logic.
- Utilizing an **enum-based approach** simplifies the code for managing multiple sheets.
- **Custom environment values** offer flexibility in managing state and actions across different views.
- **Simplified API** ensures maintainable and scalable architecture for managing sheets.

#### Summary of Contents
- **Displaying a Basic Sheet:** Introduces the basics of using the `isPresented` argument in SwiftUI for sheet presentations.
- **Enum-Based Sheets:** Shows how to encapsulate sheet types with an enum to simplify code when managing multiple sheets.
- **Global Sheets:** A more advanced pattern using custom environment values to globally manage sheets across an app.
- **Handling OnDismiss:** Adds the capability to handle sheet dismissal by introducing a second closure for the `onDismiss` event.
- **Stacked Sheets:** Briefly covers managing stacked sheets in specific cases where overlapping sheets are necessary.

#### Additional Resources
- **SwiftUI Documentation:** Official SwiftUI documentation on [sheet view modifiers](https://developer.apple.com/documentation/swiftui/view/sheet(isPresented:onDismiss:content:)).
- **AzamSharp SwiftUI Courses:** [AzamSharp School](https://azamsharp.school) offers more resources on iOS development and workshops.

<LinkCard title="Read Full Article" href="https://azamsharp.com/2024/08/18/global-sheets-pattern-swiftui.html" />

### 🚀 Mastering SwiftUI Navigation with Coordinators

Discover how to overcome SwiftUI’s navigation limitations and build scalable, production-ready apps by integrating UIKit’s Coordinator pattern into your projects.

<details>

**URL:** https://blog.jacobstechtavern.com/p/swiftui-apps-at-scale

**Authors:** `Jacob’s Tech Tavern`  

**Tags:**  
`swiftui`, `navigation`, `coordinator-pattern`, `ios-development`, `uikit`

</details>

#### Key Points
- **SwiftUI Navigation Challenge:** SwiftUI tightly couples navigation logic with views, hindering scalability and testability.
- **Coordinator Pattern Solution:** Leverage the Coordinator pattern to decouple navigation from views, enabling a scalable and testable architecture.
- **Hybrid Approach:** Combine the declarative power of SwiftUI with UIKit’s mature navigation system for seamless interoperability.

#### Summary of Contents
- **SwiftUI’s Evolution and Limitations:** A brief history of SwiftUI’s growth and its navigation challenges in complex apps.
- **The Navigation Problem:** An in-depth explanation of why SwiftUI’s built-in navigation APIs fall short for large-scale apps.
- **The Coordinator Pattern:** Step-by-step implementation of the Coordinator pattern to encapsulate navigation logic, using examples such as `AppCoordinator` and `NavigationContext`.
- **Integration with UIKit:** Techniques for wrapping SwiftUI views in `UIHostingController` and using `UINavigationController` for seamless integration.
- **Enhanced Control:** Advanced customizations using subclassed `UIHostingController` for styling and lifecycle management.

#### Helpful Links
- [SwiftUI Coordinator Example](https://github.com/pointfreeco/swift-composable-architecture)  
- [How to Refactor Massive View Controllers](https://www.hackingwithswift.com/articles/159/how-to-refactor-massive-view-controllers)  

<LinkCard title="Read Full Article" href="https://blog.jacobstechtavern.com/p/swiftui-apps-at-scale" />

### 🟢 Mastering TextEditor in SwiftUI

SwiftUI's `TextEditor` is a powerful tool for building editable text views, offering a variety of customization options to meet different requirements. This article explores its core functionality, from basic configurations to advanced features like text selection, focus management, character limits, and writing tools. We'll also examine alternatives and strategies for enhancing its capabilities.

<details>

**URL:** [Mastering TextEditor in SwiftUI](https://www.artemnovichkov.com/blog/mastering-text-editor-in-swiftui)

**Published:** 2024-11-17

**Authors:** `Artem Novichkov`

**Tags:**  
`SwiftUI`, `TextEditor`, `text editing`, `iOS development`, `writing tools`

</details>

#### Key Points
- **Basic Setup:** `TextEditor` requires a `Binding<String>` and supports customization for fonts, colors, and line spacing.
- **Focus Management:** Use the `focused` modifier to control the appearance of the keyboard dynamically.
- **Advanced Features:** Add find-and-replace functionality, customize writing tools, and handle text selection for complex editing needs.
- **Character Limit Enforcement:** Implement character limits using modifiers like `onChange`.
- **Alternatives:** Explore `TextField`, `UITextView`, or third-party frameworks for specialized use cases.

#### Summary of Contents
- **Basic Requirements:** Focus management, character limits, and reading vs. editing modes are essential for robust text editing.
- **Configuration Options:** Customize `TextEditor` with features like autocorrection control, background styling, and keyboard configuration.
- **Focus and Interaction:** Learn how to manage focus and hide/show the keyboard as required.
- **Advanced Modifiers:** Enable find-and-replace capabilities, writing tools, and introspection for read-only mode.
- **Alternatives:** Consider using `UITextView`, `TextField` with vertical axis support, or third-party frameworks like [RichTextKit](https://github.com/danielsaidi/RichTextKit).

#### Additional Resources
- **[TextEditorExample Repository](https://github.com/artemnovichkov/TextEditorExample):** Final example code for mastering `TextEditor`.
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/texteditor):** Official Apple documentation on `TextEditor`.
- **[RichTextKit](https://github.com/danielsaidi/RichTextKit):** A third-party framework for rich text editing in SwiftUI.

<LinkCard title="Read Full Article" href="https://www.artemnovichkov.com/blog/mastering-text-editor-in-swiftui" />

### 🔴 Deep Dive Into Environment in SwiftUI

SwiftUI’s `@Environment` tools provide a powerful mechanism for managing shared state across an application. This article delves into the concepts, best practices, and new features like `@Observable` and `@Bindable` introduced in iOS 17, ensuring that developers can build scalable and maintainable applications.

<details>

**URL:** [Deep Dive Into Environment in SwiftUI](https://azamsharp.com/2024/11/18/deep-dive-into-environment-in-swiftui.html)

**Published:** 2024-11-18

**Authors:** `AzamSharp`

**Tags:**  
`SwiftUI`, `@Environment`, `@EnvironmentObject`, `state management`, `iOS development`

</details>

#### Key Points
- **`@EnvironmentObject` Basics:** Use `ObservableObject` to inject global state into a SwiftUI hierarchy.
- **Efficient State Updates:** SwiftUI uses re-evaluation and diffing to optimize performance.
- **iOS 17 Enhancements:** The `@Observable` macro simplifies global state management with automatic property publication.
- **Real-World Use Cases:** Manage global or context-specific states cleanly for modular and testable components.

#### Summary of Contents
- **Environment in SwiftUI:** Overview of how `@Environment` enables seamless shared state management.
- **Re-Evaluation vs. Re-Rendering:** Insights into SwiftUI’s diffing mechanism to optimize updates.
- **New Features in iOS 17:** Explore `@Observable` and `@Bindable` macros for cleaner and faster state handling.
- **Best Practices:** Avoid tight coupling, inject dependencies based on context, and pass only necessary data to child views.
- **Real-World Applications:** Example scenarios like shopping carts and multi-tab apps to demonstrate modular design.

#### Additional Resources
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui):** Official Apple documentation on SwiftUI’s `@Environment`.
- **[HelloMarket Repository](https://github.com/azamsharpschool/HelloMarket):** Open-source shopping cart app using `@Environment`.
- **[Full-Stack E-commerce Course](https://azamsharp.teachable.com/p/full-stack-e-commerce-app-development-with-swiftui-node-js-and-postgres):** Learn how to build scalable applications from scratch.

<LinkCard title="Read Full Article" href="https://azamsharp.com/2024/11/18/deep-dive-into-environment-in-swiftui.html" />

### 🔴 Refactor SwiftUI Navigation Layer Using Coordinator Pattern

This article explores the evolution of SwiftUI navigation design by refactoring a simple Router-based approach into a more robust Coordinator-based pattern. The new implementation supports stacked navigation, sheets, and full-screen covers, making it suitable for complex, scalable applications.

<details>

**URL:** [SwiftUI Refactor Navigation Layer Using Coordinator Pattern](https://tiagohenriques.vercel.app/blog/swiftui-refactor-navigation-layer-using-coordinator-pattern)

**Published:** 2024-11-17

**Authors:** `Tiago Henriques`

**Tags:**  
`SwiftUI`, `Coordinator Pattern`, `Navigation`, `iOS Development`, `Best Practices`

</details>

#### Key Points
- **Coordinator vs. Router:** Coordinators manage navigation flows across multiple screens, enabling hierarchical and modular navigation patterns.
- **New Features:** Adds support for sheet and full-screen cover navigation with a custom `Routable` protocol.
- **Decoupled Design:** Separates navigation logic from views, promoting clean architecture and scalability.
- **Advanced Usage:** Implements nested Coordinators for managing complex navigation flows (e.g., embedding a Favourites Coordinator within an App Coordinator).

#### Summary of Contents
- **Router vs. Coordinator:** Highlights the difference in scope and functionality between the two patterns.
- **Coordinator Implementation:** Introduces a `Routable` protocol and a custom `Coordinator` class for managing various navigation types.
- **CoordinatorStack View:** A generic solution for integrating stacked navigation, sheets, and full-screen covers in one component.
- **Nested Coordinators:** Demonstrates embedding child Coordinators within a parent Coordinator for modular navigation flows.
- **Integration with Views:** Uses `@Environment` to access Coordinators and manage navigation dynamically.

#### Additional Resources
- **[Coordinators & SwiftUI](https://vbat.dev/coordinators-swiftui):** A deep dive into using Coordinators with SwiftUI.
- **[Mastering iOS Navigation](https://blog.ravn.co/mastering-ios-navigation-coordinators-viewcoordinators-and-routers/):** Detailed guide on navigation strategies for iOS.
- **[Coordinator Pattern in SwiftUI](https://www.swiftanytime.com/blog/coordinator-pattern-in-swiftui):** Best practices for implementing Coordinators.

<LinkCard title="Read Full Article" href="https://tiagohenriques.vercel.app/blog/swiftui-refactor-navigation-layer-using-coordinator-pattern" />

### 🟢 Implementing the "Shared With You" Feature in iOS Apps

This article walks you through implementing the **Shared with You** feature in iOS apps, introduced in iOS 16. It covers the feature's purpose, setup, and code implementation, making it easier for developers to integrate shareable content support in their apps.

<details>

**URL:** https://digitalbunker.dev/shared-with-you/

**Published:** 2024-11-19

**Authors:** `Aryaman Sharda`

**Tags:**  
`iOS Development`, `Swift`, `iOS Features`, `User Experience`, `Code Implementation`

</details>

#### Key Points
- **Purpose of "Shared With You":** Aims to help users rediscover shared content like links, songs, and recommendations directly in the relevant apps.
- **Setup Requirements:** Universal Links must be configured, and testing should be done on physical devices.
- **Core Components:**
  - **Shelf:** A prioritized list of shared content, arranged by system recommendations, pinned messages, and chronological order.
  - **Attribution View:** Displays details about the shared content, including the sender and a link back to the original message.

#### Summary of Contents
- **Getting Started:** Explains prerequisites like enabling Universal Links and testing on physical devices.
- **Implementation:** Step-by-step guidance on integrating the `SWHighlightCenter` class to manage shared links and using the `SWAttributionView` for attribution display.
- **Customization:** Examples of adding actions to the attribution view's context menu.
- **Testing Tips:** Key steps to ensure seamless testing of the feature.
- **Final Code Example:** Demonstrates creating a shelf UI in SwiftUI using `SharedWithYouService`.

#### Additional Resources
- **[Universal Link Testing Tool](https://getuniversal.link/):** A utility to verify and debug Universal Links.
- **[Aryaman Sharda’s YouTube Channel](https://www.youtube.com/c/AryamanSharda):** Tutorials on iOS development.

<LinkCard title="Read Full Article" href="https://digitalbunker.dev/shared-with-you/" />

### 🟢 Using `ViewThatFits` to Create a More Accessible List Cell in SwiftUI

This article explores leveraging SwiftUI's **`ViewThatFits`** component to design list cells that adapt their layout based on available screen space or text size. The approach enhances accessibility and maintains scalability for future updates.

<details>

**URL:** https://blog.stackademic.com/using-viewthatfits-to-create-a-more-accessible-list-cell-in-swiftui-e87dc8feb4d4

**Published:** 2024-11-20

**Authors:** `Stackademic`

**Tags:**  
`SwiftUI`, `Accessibility`, `List Cell`, `ViewThatFits`, `Responsive Design`

</details>

#### Key Points
- **Dynamic Layout Switching**: Demonstrates how `ViewThatFits` automatically switches between horizontal and vertical layouts.
- **Customizable Accessibility**: Scales effortlessly for different screen sizes and text accessibility settings.
- **Minimal Complexity**: Simplifies layout logic without resorting to conditionals or manual calculations.
- **Scalability**: Prepares apps for future changes in Apple’s UI framework.

#### Summary of Contents
- **The Problem**: Designers often require list cells that adapt seamlessly to different font sizes or screen orientations.
- **Horizontal and Vertical Layouts**: Examples of `HStack` and `VStack` implementations for responsive layouts.
- **Using `ViewThatFits`**: Explanation of how the component tests view sizes and displays the first fitting layout, with a focus on the `.horizontal` direction for optimization.
- **Sample Implementation**: Code examples show a list of adaptable cells using `ViewThatFits` with `HorizontalView` and `VerticalView`.

#### Additional Resources
- **Explore More Articles by the Author**: [Stackademic on Medium](https://medium.com/@jpmtech)
- **Apps Built with Native Development**: [JPMTech Portfolio](https://jpmtech.io/apps)

<LinkCard title="Read Full Article" href="https://blog.stackademic.com/using-viewthatfits-to-create-a-more-accessible-list-cell-in-swiftui-e87dc8feb4d4" />

### 🔴 Mastering SwiftUI Performance

This article delves into **SwiftUI performance optimization**, exploring techniques to enhance rendering efficiency and manage view updates more effectively. Readers will learn about strategies like custom diffing, efficient data model design, minimizing dependencies, and utilizing debugging tools.

<details>

**URL:** [Mastering SwiftUI Performance](https://yourcoachmaz.medium.com/mastering-swiftui-performance-054d289c8908)

**Published:** 2024-11-20

**Authors:** `YourCoachMaz`

**Tags:**  
`SwiftUI`, `Performance Optimization`, `Diffing`, `Efficient Data Models`, `Swift Programming`

</details>

#### Key Points
- **SwiftUI Diffing**: Understand how SwiftUI updates affected views efficiently using a diffing algorithm.
- **Custom Diffing**: Utilize `EquatableView` and `.equatable()` for tailored view updates.
- **Efficient Data Models**: Prefer structs over classes for faster stack allocation and immutability.
- **Lazy Loading**: Optimize lists with `LazyVStack` and similar constructs for better memory management.
- **Debugging Tools**: Leverage SwiftUI Profiler and `Self._printChanges()` for insights into unnecessary view updates.

#### Summary of Contents
- **Understanding Diffing in SwiftUI**: Overview of SwiftUI's diffing algorithm and its limitations for complex hierarchies.
- **Using EquatableView for Custom Diffing**: How to implement custom update logic by conforming to `Equatable` and wrapping views.
- **Efficient Data Models and Dependencies**: Guidance on using structs, enums, and property wrappers like `@State` and `@ObservedObject`.
- **Optimizing View Rendering**: Techniques such as lazy loading, minimizing conditional logic, and avoiding redundant computations.
- **Debugging and Profiling**: Tools and practices to identify and resolve performance bottlenecks in SwiftUI projects.

#### Additional Resources
- **[SwiftUI Docs](https://developer.apple.com/documentation/swiftui)**: Apple’s official documentation on SwiftUI.
- **[Profiling SwiftUI](https://developer.apple.com/videos/)**: Watch WWDC videos on SwiftUI performance optimization.

<LinkCard title="Read Full Article" href="https://yourcoachmaz.medium.com/mastering-swiftui-performance-054d289c8908" />

### 🔴 Behind the Scenes of UI Part 2: SwiftUI

This blog post dives deep into **SwiftUI**, Apple’s declarative framework for building user interfaces. While emphasizing its declarative and data-driven nature, the article explores how SwiftUI operates under the hood by comparing it to UIKit and shedding light on its internal processes.

<details>

**URL:** [Behind the Scenes of UI Part 2: SwiftUI](https://vbat.dev/behind-the-scenes-of-ui-part-2-swiftui)

**Published:** [Add Publish Date]

**Authors:** `[Author's Name]`

**Tags:**  
`[SwiftUI]`, `[UIKit]`, `[iOS Development]`, `[Declarative UI]`, `[Frameworks]`

</details>

#### Key Points
- **SwiftUI: A Declarative Framework**  
  SwiftUI allows developers to describe the desired UI and behavior, and the framework manages the rendering process.
  
- **Data-Driven Approach**  
  UI changes automatically reflect data or state modifications, simplifying synchronization.

- **Integration with UIKit**  
  SwiftUI uses UIKit, Core Animation, and Core Graphics behind the scenes for rendering and animations, ensuring compatibility and leveraging proven technologies.

- **The Role of the `body`**  
  A SwiftUI view's `body` defines both layout and content. Re-evaluating the `body` is central to rendering updates.

#### Summary of Contents
- **Understanding the View and Render Tree**  
  Explains how SwiftUI employs an ephemeral view tree (structs) and a persistent render tree (attribute graph) for state tracking and efficient updates.

- **Phases of the SwiftUI Render Loop**  
  The render loop is dissected into evaluation, layout, and rendering phases, each playing a crucial role in UI updates.

- **Connection with UIKit and CATransaction**  
  Highlights how SwiftUI relies on UIKit's core principles, including CATransactions, for managing the render process.

- **Hosting Views**  
  Discusses `_UIHostingView`, which bridges SwiftUI views with UIKit, showcasing how views map to UIKit components.

- **Challenges and Future Possibilities**  
  Explores the challenges developers face when transitioning from UIKit to SwiftUI and how Apple might evolve SwiftUI in the future.

#### Additional Resources
- **Video:** [Watch the accompanying video](https://youtu.be/ue6tBz03cVQ).
- **Related Blog:** [SwiftUI Layout System by Alex Grebenyuk](https://kean.blog/post/swiftui-layout-system).

<LinkCard title="Read Full Article" href="https://vbat.dev/behind-the-scenes-of-ui-part-2-swiftui" />

### 🔵 SwiftUI Craftsmanship: Mastering ViewModifiers

SwiftUI's **ViewModifiers** empower developers to refine views with precision, allowing for enhanced styling, behavior, and layout. This article delves into the types, best practices, and common pitfalls of using ViewModifiers, comparing their role to the finishing touches of a master craftsman.

<details>

**URL:** [SwiftUI Craftsmanship: ViewModifiers](https://captainswiftui.substack.com/p/swiftui-craftsmanship-viewmodifiers)

**Published:** 2024-11-11

**Authors:** `Captain SwiftUI`

**Tags:**  
`SwiftUI`, `iOS Development`, `ViewModifiers`, `UI Design`, `Best Practices`

</details>

#### Key Points
- **ViewModifiers** act like a craftsman's finishing touches, refining views without altering their core structure.
- Custom modifiers encapsulate frequently used design elements, improving **reusability** and **consistency**.
- The **order of modifiers** affects visual layout and behavior significantly.
- Using **categories of modifiers** like Styling, Layout, and Event simplifies design decision-making.
- Thoughtful application of modifiers improves **readability**, **performance**, and **accessibility**.

#### Summary of Contents
- **Introduction to ViewModifiers:** A comparison of ViewModifiers to woodworking techniques, emphasizing their role in enhancing views.
- **Categories of Modifiers:** Styling, Event, Functional, Behavior, Layout, and Visibility Modifiers, explained with practical examples.
- **Best Practices:** Includes logical stacking, reusability, and accessibility considerations.
- **Common Pitfalls:** Performance issues, complex logic within modifiers, and layout missteps.

#### Additional Resources
- **Apple Documentation:** [SwiftUI ViewModifiers](https://developer.apple.com/documentation/swiftui/viewmodifier)

<LinkCard title="Read Full Article" href="https://captainswiftui.substack.com/p/swiftui-craftsmanship-viewmodifiers" />

### 🔵 Defining Custom Environment Values in SwiftUI

SwiftUI allows developers to pass data between views using `@Environment`. While the predefined `EnvironmentValues` offer a robust set of tools, this article explores creating **custom environment values**, empowering developers to introduce and manage their own keys and values for view hierarchies.

<details>

**URL:** [How to Define Custom Environment Values in SwiftUI](https://sarunw.com/posts/how-to-define-custom-environment-values-in-swiftui/)

**Published:** 2021-08-30

**Authors:** `Sarun W.`

**Tags:**  
`SwiftUI`, `Environment`, `Custom Keys`, `iOS Development`, `View Management`

</details>

#### Key Points
- SwiftUI uses `@Environment` to pass data down a view hierarchy.
- Developers can create **custom environment keys** and values using `EnvironmentKey` and `EnvironmentValues`.
- Adding a **dedicated modifier** simplifies usage and improves readability.
- Custom environment values help encapsulate **context-specific logic**.

#### Summary of Contents
- **Introduction:** Overview of `@Environment` and its potential for customization.
- **Step 1:** Define a new environment key by conforming to `EnvironmentKey` and providing a default value.
- **Step 2:** Extend `EnvironmentValues` to integrate the custom key.
- **Step 3:** (Optional) Add a dedicated modifier for better usability.
- **Demo:** Example implementation with a sensitive data toggle for redacting sensitive information.
- **Conclusion:** Recap of the process and its benefits.

#### Additional Resources
- **Apple Documentation:** [Environment in SwiftUI](https://developer.apple.com/documentation/swiftui/environment)
- **Sarun's Guide to Environment:** [What is @Environment in SwiftUI](https://sarunw.com/posts/what-is-environment-in-swiftui/#environment-override-priority)

<LinkCard title="Read Full Article" href="https://sarunw.com/posts/how-to-define-custom-environment-values-in-swiftui/" />

### 🔴 Init to Win It: Understanding Initializers in SwiftUI

SwiftUI simplifies creating user interfaces, often making it unnecessary to define custom initializers. However, this simplicity can lead to misconceptions about when and why to use initializers. This article explores **initializers in SwiftUI**, focusing on their role, the nuances of property wrappers, and the complexities of working with `StateObject` and `Observable`.

<details>

**URL:** https://captainswiftui.substack.com/p/init-to-win-it

**Published:** 2024-08-28

**Authors:** `Captain SwiftUI`

**Tags:**  
`SwiftUI`, `iOS Development`, `Initializers`, `StateObject`, `Observable`

</details>

#### Key Points
- **Initializers** establish initial property states and dependencies for SwiftUI views.
- Swift structs offer **Memberwise Initializers** by default, reducing boilerplate.
- **Property Wrappers** like `@State` and `@StateObject` behave differently under the hood, requiring careful use in initializers.
- Apple recommends specific practices for `StateObject` to ensure stability across redraws.
- The newer **Observation framework** introduces `@Bindable` and tracking without wrappers, simplifying some use cases.

#### Summary of Contents
- **Introduction to Initializers:** Overview of their purpose and role in SwiftUI's lifecycle.
- **Property Wrappers:** Insights into `@State`, `@Binding`, and `@StateObject`, with examples and limitations.
- **StateObject Gotchas:** Explanation of why `StateObject` initializers require care and Apple's recommendations.
- **Observation Framework:** Discussion on new approaches with `@State`, `@Bindable`, and unwrapped Observables.
- **Best Practices:** Tips for when to use Memberwise Initializers, custom initializers, or task modifiers.

#### Additional Resources
- **Apple Documentation:** [StateObject Initialization](https://developer.apple.com/documentation/swiftui/stateobject#Initialize-state-objects-using-external-data)
- **Property Wrappers Proposal:** [Swift Evolution Proposal](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0258-property-wrappers.md)
- **ObservableObject Differences:** [StateObject vs ObservedObject](https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/)

<LinkCard title="Read Full Article" href="https://captainswiftui.substack.com/p/init-to-win-it" />

### 🔵 SwiftUI Craftsmanship: Designing Effective View Contracts

SwiftUI's flexibility allows developers to create dynamic UIs effortlessly. However, poor planning around a View's contract can lead to redundant code and limited reusability. This article explores **View contracts** in SwiftUI, focusing on crafting effective interfaces and asking the crucial question: **"What is this View for?"**

<details>

**URL:** [SwiftUI Craftsmanship: View Contracts](https://captainswiftui.substack.com/p/swiftui-craftsmanship-view-contracts)

**Published:** 2024-10-24

**Authors:** `Captain SwiftUI`

**Tags:**  
`SwiftUI`, `View Design`, `Reusability`, `UI Development`, `Best Practices`

</details>

#### Key Points
- A **View contract** defines the data and functionality a View relies on.
- Asking **"What is this View for?"** ensures better planning and prevents short-sighted designs.
- Avoid locking Views to specific data types; instead, focus on the properties they display.
- Design **FeatureViews** as the entry point for feature hierarchies, handling core data requirements.
- Be cautious with `Environment` usage—it simplifies access but adds maintenance challenges.

#### Summary of Contents
1. **Introduction to View Contracts:** Overview of how poor contracts limit flexibility.
2. **Case Study:** Refactoring a `RowItem` View to accept generic properties instead of rigid types.
3. **FeatureViews:** Explanation of top-level Views managing feature-specific data.
4. **Best Practices for Subviews:** Balancing generic contracts with type-specific logic.
5. **Avoiding Pitfalls with Environment:** When and how to use Environment responsibly.

#### Additional Resources
- **Apple Documentation:** [SwiftUI Views](https://developer.apple.com/documentation/swiftui/view)
- **Related Article:** [SwiftUI Craftsmanship: ViewModifiers](https://captainswiftui.substack.com/p/swiftui-craftsmanship-viewmodifiers)

<LinkCard title="Read Full Article" href="https://captainswiftui.substack.com/p/swiftui-craftsmanship-view-contracts" />

### 🔵 Full Disclosure: Mastering SwiftUI’s DisclosureGroup

The **DisclosureGroup** is one of SwiftUI's simplest yet most versatile components, allowing content to expand and collapse dynamically. While it’s great for providing additional information or controls on demand, this article dives deeper into customizing and rethinking its behavior, including creating a **"drawer" that expands upwards**.

<details>

**URL:** [Full DisclosureGroup](https://captainswiftui.substack.com/p/full-disclosuregroup)

**Published:** 2024-09-09

**Authors:** `Captain SwiftUI`

**Tags:**  
`SwiftUI`, `DisclosureGroup`, `Component Composition`, `UI Customization`, `Best Practices`

</details>

#### Key Points
- **DisclosureGroup Basics:** A simple-to-implement component that provides toggled visibility for additional content.
- **Customization with DisclosureGroupStyle:** By modifying its style, DisclosureGroup can take on new forms, such as expanding upwards.
- **Core Principles of SwiftUI Composition:** Components should prioritize functionality over presentation, with styles enhancing the user experience.

#### Summary of Contents
1. **Introduction to DisclosureGroup:** Overview of its interface and default behavior.
2. **Basic Usage:** How to implement a DisclosureGroup with a label and content.
3. **Customization with Styles:** Redefining DisclosureGroup behavior using `DisclosureGroupStyle`, including flipping the label and content positions.
4. **Practical Applications:** Examples such as shopping cart displays and expanding drawers.
5. **Lessons in Composition:** The importance of designing components with a functionality-first approach and leveraging styles for aesthetic adjustments.

#### Additional Resources
- **Apple Documentation:** [DisclosureGroup](https://developer.apple.com/documentation/swiftui/disclosuregroup)
- **Related Article:** [SwiftUI Craftsmanship: View Contracts](https://captainswiftui.substack.com/p/swiftui-craftsmanship-view-contracts)

<LinkCard title="Read Full Article" href="https://captainswiftui.substack.com/p/full-disclosuregroup" />

### 🔵 Dependency Injection in SwiftUI: Constructor vs Environment Injection

Dependency Injection (DI) is a crucial design pattern for building scalable and maintainable iOS applications. In SwiftUI, DI adopts a slightly different approach compared to UIKit. This article explores two key methods for implementing DI in SwiftUI: **Constructor Injection** and **Environment Injection**.

<details>

**URL:** [DI in SwiftUI](https://vbat.dev/di-in-swiftui)

**Published:** 2024-07-01

**Authors:** `vbat.dev`

**Tags:**  
`SwiftUI`, `Dependency Injection`, `@Environment`, `@EnvironmentObject`, `iOS Development`

</details>

#### Key Points
- **Constructor Injection:** Dependencies are passed directly via initializers, maintaining familiarity with UIKit practices.
- **Environment Injection:** Dependencies are injected into the view hierarchy for access by child views.
- **@EnvironmentObject:** Injects an `ObservableObject` for use in complex hierarchies.
- **@Environment:** Uses a key/value approach to inject dependencies, suitable for both value and reference types.

#### Summary of Contents
1. **Introduction to Dependency Injection in SwiftUI:** Overview of DI and its adaptation to SwiftUI.
2. **Constructor Injection:** A familiar pattern extended to SwiftUI views.
3. **Environment Injection:**
   - **@EnvironmentObject:** For injecting `ObservableObject` instances into the view hierarchy.
   - **@Environment:** For injecting key/value dependencies with safety and flexibility.
4. **Practical Examples:** Demonstrations of each approach with code.
5. **Comparison and Best Practices:** Discusses when to use `@EnvironmentObject` versus `@Environment` for injecting dependencies.

#### Additional Resources
- **Apple Documentation:** [EnvironmentValues](https://developer.apple.com/documentation/swiftui/environmentvalues)
- **Related Article:** [DI in iOS: Complete Guide](https://medium.com/its-tinkoff/di-in-ios-complete-guide-cd76a079d2d)

<LinkCard title="Read Full Article" href="https://vbat.dev/di-in-swiftui" />

### 🟢 SwiftUI Charts: Plotting Functions in iOS 18

This article introduces **function plotting in the SwiftUI Charts framework** introduced in iOS 18, showcasing how to create dynamic visualizations using `LinePlot` and `AreaPlot`.

<details>

**URL:** https://useyourloaf.com/blog/swiftui-charts-plotting-functions/

**Published:** 2024-11-24

**Authors:** `Keith Harrison`

**Tags:**  
`SwiftUI`, `iOS 18`, `Charts`, `Function Plotting`, `Data Visualization`

</details>

#### Key Points
- **Function Plotting Basics:** `LinePlot` and `AreaPlot` can graph functions by accepting closures that map `Double` to `Double`.
- **Customization Options:** Developers can adjust x-axis ranges and y-axis labels to suit specific needs.
- **Error Handling for Undefined Functions:** Functions should return `.nan` or `.infinity` for undefined values to ensure rendering stability.
- **Comparative Visualization:** Overlaying line or area plots with other chart types (e.g., bar charts) highlights relationships between functions and data.

#### Summary of Contents
- **LinePlot Examples:**
  - Simple quadratic function: `y = x * x`.
  - Trigonometric functions: `y = sin(x)` with axis scaling.
  - Handling undefined values: `y = 1 / x`.
- **AreaPlot Use Cases:**
  - Filling the area under a curve: `y = sin(x)`.
  - Highlighting differences: Filling the area between two curves, such as `yStart = sin(x)` and `yEnd = sin(x + π)`.
- **Advanced Visualizations:**
  - Overlaying function plots with bar charts to compare real data with expected trends.
- **Practical Applications:** Use function plotting to analyze trends and model approximations visually.

#### Additional Resources
- **[WWDC24: Swift Charts - Vectorized and Function Plots](https://developer.apple.com/videos/play/wwdc2024/10155):** Official Apple session on using advanced Swift Charts features.

<LinkCard title="Read Full Article" href="https://useyourloaf.com/blog/swiftui-charts-plotting-functions/" />

