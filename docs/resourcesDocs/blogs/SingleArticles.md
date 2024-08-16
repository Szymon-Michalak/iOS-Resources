---
title: Single Articles
description: Single Articles
sidebar_position: 1
---


## Best Practices

### There are 2 ways to violate ‘S’ in SOLID

Provide a deep dive into the Single Responsibility principle within SOLID, examining practical iOS architecture challenges and solutions.

<details>

**URL:** https://isaac-weisberg.medium.com/there-are-2-ways-to-violate-s-in-solid-9c327e7e4b40

**Published:** Apr 30, 2021  

**Author:** Isaac Weisberg

**Tags:**  
`SOLID`, `iOS development`, `architecture`, `clean code`, `Single Responsibility Principle`

</details>

#### Key Points
- Discusses challenges and interpretations of the Single Responsibility Principle (SRP) in iOS development.
- Examines a case study involving transaction cell architecture and the evolution of responsibilities.
- Highlights the impact of violating SRP on code complexity and scalability.
- Proposes solutions using clean architecture principles to maintain code integrity and scalability.

#### Summary of Contents
- **Introduction:** Overview of the SRP and its significance in software development.
- **The Humble Beginning:** Initial implementation of a transaction cell with discussions on its responsibilities.
- **A Wrench in the Works:** Introduction of new requirements and the impact on SRP violations.
- **The Concealed Complexity:** Analysis of compounded responsibilities and their implications.
- **Class Count? Barely Any:** Advocacy for immutable states and modular design in maintaining SRP.
- **Conclusion:** Summarizes key learnings and the importance of adhering to SRP for robust iOS architecture.

<LinkCard title="Read Full Article" href="https://isaac-weisberg.medium.com/there-are-2-ways-to-violate-s-in-solid-9c327e7e4b40" />

### Writing Good Unit Tests

<details>

**URL:** https://blog.devgenius.io/writing-good-unit-tests-2158be9ee82d

**Published:** Oct 17, 2023  

**Authors:** `Chris Mash`

**Tags:**  
`Unit Testing`, `Software Development`, `Test Driven Development`, `TDD`

</details>

#### Key Points
- Importance of writing good unit tests for ensuring code correctness and future maintainability.
- Characteristics of good unit tests: validation of expected behaviors, isolation from dependencies, and meaningful coverage.
- Benefits of Test Driven Development (TDD) in improving test quality and code design.
- Strategies for verifying expected values, preventing unexpected function calls, and ensuring test pre-requisites are met.

#### Summary of Contents
- **Introduction:** Emphasizes the role of unit tests in code reliability and maintenance.
- **What do good unit tests look like?:** Criteria for effective unit tests, including behavior validation and isolation principles.
- **Verify expected values:** Contrasts poor and improved examples of tests validating expected outcomes.
- **Verify unexpected function calls aren’t made:** Discusses techniques to prevent unintended function calls in tests.
- **Verify expected behavior:** Examines examples of testing specific behaviors in isolated units.
- **Verify pre-requisites of your test:** Strategies for ensuring test conditions are met before execution.
- **How to get good unit tests?:** Advocates for TDD as a methodology to foster effective testing habits.
- **Conclusion:** Summarizes the importance of early testing and quality assurance practices in software development.

<LinkCard title="Read Full Article" href="https://blog.devgenius.io/writing-good-unit-tests-2158be9ee82d" />

### The Advanced Guide to UserDefaults in Swift

<details>

**URL:** https://www.vadimbulavin.com/advanced-guide-to-userdefaults-in-swift/

**Published:** Dec 9, 2019  

**Authors:** Vadim Bulavin

**Tags:**  
`Swift`, `UserDefaults`, `Property Wrappers`

</details>

#### Key Points
- UserDefaults in Swift manages persistent storage for key-value pairs using .plist files.
- It supports storing data types such as String, Date, Bool, Int, Double, Float, Array, Dictionary, and URL.
- Large data should be avoided due to performance reasons, especially on platforms like tvOS.
- Custom objects are not recommended for UserDefaults due to compatibility issues.
- Swift 5 introduced property wrappers, enhancing type-safety and allowing observation of UserDefaults changes.

#### Summary of Contents
- **Introduction:** Overview of UserDefaults and its evolution with Swift 5.
- **UserDefaults Overview:** Discusses supported data types and best practices for usage.
- **UserDefaults Internal Structure:** Details the per-domain storage model and performance considerations.
- **Implementing Key-Value Storage:** Guide on implementing type-safe storage using property wrappers.
- **Observing UserDefaults Value Changes:** Explanation on extending UserDefaults with property wrapper observation.
- **Source Code:** Links to the implementation example and project repository.
- **Summary:** Key takeaways emphasizing UserDefaults' use cases and best practices.

<LinkCard title="Read Full Article" href="https://www.vadimbulavin.com/advanced-guide-to-userdefaults-in-swift/" />


## SwiftUI

### Double Optional Bindings in SwiftUI

<details>

**URL:** https://phlippieb.dev/posts/double-optional-bindings/

**Published:** Tue Jun 25 2024  

**Authors:** Phlippie Bosman

**Tags:**  
`SwiftUI`, `iOS Development`, `Optional Types`, `UI Design`

</details>

#### Key Points
- Discusses the usage of double optional types in SwiftUI for managing sheet presentation and item editing.
- Shows how SwiftUI utilizes optional bindings to control the visibility of sheets.
- Highlights the use of optional types to distinguish between creating new items and editing existing ones.
- Provides practical examples of implementing double optional bindings in SwiftUI views.

#### Summary of Contents
- **Introduction:** Introduces the concept of using double optional types in SwiftUI views.
- **Optional Binding for Sheet Visibility:** Explains how SwiftUI uses optional bindings to show or dismiss sheets based on state changes.
- **Optional Binding for Item Editing:** Demonstrates the use of optional types to differentiate between creating new items and editing existing ones.
- **Practical Examples:** Provides code examples and scenarios where double optional bindings are applied in SwiftUI development.
- **Conclusion:** Summarizes the benefits and challenges of using double optional types in SwiftUI UI design.

<LinkCard title="Read Full Article" href="https://phlippieb.dev/posts/double-optional-bindings/" />


### Enhancing Search in Pulse with SwiftUI Features

<details>

**URL:** https://kean.blog/post/pulse-search

**Published:** January 24, 2023  

**Author:** Alex Grebenyuk

**Tags:**  
`SwiftUI`, `iOS 15`, `iOS 16`, `Pulse`, `Search`, `UI Design`

</details>

#### Key Points
- Introduction of SwiftUI's `.searchable` modifier in Pulse version 3.2.
- Integration of advanced search capabilities including filters, scopes, and tokens.
- Optimization of search performance and user interface improvements.
- Addition of sorting and grouping features for enhanced data analysis.
- Implementation of pinned items for quick access to important logs.

#### Summary of Contents
- **Introduction:** Introduction to SwiftUI's `.searchable` and its impact on Pulse.
- **Searchable:** Detailed explanation of search functionality, including filters and search scopes.
- **Suggestions:** How Pulse intelligently suggests filters based on user input patterns.
- **Scopes:** Overview of search scopes in Pulse, enhancing search precision.
- **List:** Performance optimizations in list rendering and UI improvements.
- **Sort By and Group By:** Introduction of sorting and grouping features for log analysis.
- **Pins:** Implementation of pinned items for quick access to important logs.
- **Final Thoughts:** Reflections on the improvements and future directions for Pulse.

<LinkCard title="Read Full Article" href="https://kean.blog/post/pulse-search" />


### Understanding SwiftUI's PreferenceKeys
This article explains how SwiftUI’s PreferenceKeys allow data to flow upwards from child views to parent views, complementing the traditional downward flow of data. PreferenceKeys are crucial for scenarios where you need to pass information up the view hierarchy without relying on bindings.

<details>
**URL:** [Understanding SwiftUI's PreferenceKeys](https://swiftlogic.io/posts/understanding-swiftui-preferencekeys/)

**Published:** July 21, 2024  
**Last Updated:** Not specified

**Authors:** Osaretin Uyigue

**Tags:**  
`swift`, `ios development`, `swiftui`, `preference keys`, `data flow`, `data binding`
</details>

#### Key Points
- PreferenceKeys enable data flow from child to parent views in SwiftUI, opposite to Environment variables.
- Implementing the `PreferenceKey` protocol involves defining a `Value`, a `defaultValue`, and a `reduce` function to manage and combine values.
- Custom PreferenceKeys can be created to pass specific data types, such as view dimensions, up the view hierarchy.
- Practical examples include custom navigation titles using PreferenceKeys to dynamically set view titles based on child views.

#### Summary of Contents
- **Introduction:** Overview of PreferenceKeys and their role in SwiftUI’s data flow mechanism.
- **How it Works:** Explanation of how PreferenceKeys allow data to move up the view hierarchy without bindings.
- **How PreferenceKeys Work:** Detailed breakdown of the `PreferenceKey` protocol and its components.
- **Creating a Custom PreferenceKey:** Example of creating a `HeightPreferenceKey` to track and pass view heights.
- **Using PreferenceKeys in Views:** Illustration of using PreferenceKeys in `ChildView` and `ParentView` for dynamic data handling.
- **Real-World Use Case: Custom Navigation Title:** Example of implementing a custom navigation view that uses a PreferenceKey for setting titles.
- **Conclusion:** Recap of the benefits and practical applications of PreferenceKeys in SwiftUI.

<LinkCard title="Read Full Article" href="https://swiftlogic.io/posts/understanding-swiftui-preferencekeys/" />

### Customizing the Appearance of Symbol Images in SwiftUI

<details>

**URL:** https://nilcoalescing.com/blog/CustomizingTheAppearanceOfSymbolImagesInSwiftUI/

**Published:** 22 July 2024  

**Author:** Natalia Panferova

**Tags:**  
`iOS`, `macOS`, `SwiftUI`

</details>

#### Key Points
- Explains how to customize SF Symbols in SwiftUI apps.
- Covers adjustments for size, color, rendering modes, variable values, and design variants.
- Highlights best practices for maintaining symbol image integrity.

#### Summary of Contents
- **Introduction:** Introduction to SF Symbols and their use in SwiftUI apps.
- **Size:** Techniques for adjusting symbol size using the `font()` and `imageScale()` modifiers.
- **Color:** Methods for customizing symbol colors using the `foregroundStyle()` modifier.
- **Rendering Mode:** Overview of different rendering modes (`monochrome`, `hierarchical`, `palette`, `multicolor`) and their effects.
- **Variable Value:** Explanation of using variable values to dynamically change symbol appearance.
- **Design Variants:** Discussion on different symbol design variants (`slash`, `fill`, shapes) and their applications.
- **Conclusion:** Emphasizes the importance of using these customization techniques to enhance app aesthetics and user experience.

<LinkCard title="Read Full Article" href="https://nilcoalescing.com/blog/CustomizingTheAppearanceOfSymbolImagesInSwiftUI/" />


## Xcode and Workflow

### Multi-cursor editing in Xcode

<details>

**URL:** https://sarunw.com/posts/multi-cursor-editing-in-xcode/

**Published:** 11 Nov 2020  

**Authors:** `Sarun Wongpatcharapakorn`

**Tags:**  
`Xcode`, `Workflow`

</details>

#### Key Points
- Introduction to multi-cursor editing in Xcode.
- Various methods to add and remove cursors simultaneously.
- Benefits of multi-cursor editing for coding efficiency.

#### Summary of Contents
- **Introduction:** Overview of the concept of multi-cursor editing.
- **What is a cursor?:** Definition and typical use of a single cursor in code editing.
- **What is multi-cursor editing?:** Explanation of how multiple cursors can be used simultaneously.
- **How to use it?:** Step-by-step guide on enabling multi-cursor editing using different methods (click, arrow keys, drag).
- **Why do we need this?:** Benefits and practical applications of multi-cursor editing in coding.
- **Initialize custom CodingKey:** Example of applying multi-cursor editing to streamline code structuring.
- **Change method parameter indentation style:** Practical demonstration of enhancing code readability with multi-cursor editing.
- **Conclusion:** Recap of the advantages and encouragement to incorporate multi-cursor editing into coding workflow.

<LinkCard title="Read Full Article" href="https://sarunw.com/posts/multi-cursor-editing-in-xcode/" />

### Using @DebugDescription in Xcode 16
Learn how the CustomDebugStringConvertible protocol and @DebugDescription macro in Xcode 16 enhance debugging by providing clear, custom debug outputs.

<details>
**URL:** https://digitalbunker.dev/debug-description-macro-xcode-16/?ref=createwithswift.com

**Published:** July 21, 2024  

**Authors:** `Aryaman Sharda`

**Tags:**  
`iOS & Swift`, `Debugging`, `Xcode 16`
</details>

#### Key Points
- Introduces the CustomDebugStringConvertible protocol for customizing debug outputs of custom types.
- Discusses the @DebugDescription macro, enhancing debug visibility directly in Xcode's Variable Inspector.
- Highlights benefits such as improved debugging experience without additional print statements.
- Mentions alternatives for those not yet using Xcode 16, such as LLDB Type Summaries.
- References discussions from Swift forums on the evolution and proposals related to @DebugDescription.

#### Summary of Contents
- **Introduction:** Overview of challenges in debugging custom types and the importance of clear debug outputs.
- **Using CustomDebugStringConvertible:** Explains how to implement the protocol to customize debug descriptions for custom types.
- **@DebugDescription Macro:** Introduces the macro and its role in displaying debugDescription in Xcode's Variable Inspector.
- **How It Works:** Details the process of LLDB's expression evaluation and its implications for debugging.
- **Macro Alternatives:** Discusses using LLDB Type Summaries as an alternative for older Xcode versions.
- **Conclusion:** Emphasizes the practical benefits of adopting @DebugDescription and suggests further reading on the topic.

<LinkCard title="Read Full Article" href="https://digitalbunker.dev/debug-description-macro-xcode-16/?ref=createwithswift.com" />



## Localization

### Formatted Strings in iOS Localization

<details>

**URL:** https://kean.blog/post/formatted-strings

**Published:** November 29, 2020  

**Authors:** Alex Grebenyuk

**Tags:**  
`iOS Development`, `Localization`, `NSAttributedString`, `XMLParser`, `HTML`

</details>

#### Key Points
- Discusses common poor practices in localizing formatted strings in iOS apps.
- Covers problems with concatenated strings and substring lookup approaches.
- Introduces using HTML and `NSAttributedString` for better localization but highlights drawbacks.
- Proposes a solution using `XMLParser` to parse basic XML tags for improved control and performance.

#### Summary of Contents
- **Introduction:** Challenges of localizing text with rich formatting in iOS.
- **Poor Practices:**
  - Concatenated Strings: Issues with hard-coded sentence structures and translation complexities.
  - Substring Lookup: Problems with applying attributes to substrings, leading to maintenance issues.
  - HTML: Use of HTML for rich text formatting and its limitations in iOS apps.
- **Proposed Solution:** Introduces a lightweight solution using `XMLParser` for parsing XML-like tags.
- **Technical Details:** Details on using `NSAttributedString` and `XMLParser`.
- **Applications and Examples:** Practical examples of implementing the proposed solution.
- **Conclusion:** Advocates for using `XMLParser` for handling formatted strings in iOS apps due to its simplicity and performance benefits.

<LinkCard title="Read Full Article" href="https://kean.blog/post/formatted-strings" />

## Concurrency

### Async await in Swift: The Full Toolkit

<details>

**URL:** https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit?ref=createwithswift.com

**Published:** July 22, 2024 

**Authors:** Jacob Bartlett

**Tags:**  
`Swift`, `Concurrency`, `Async/Await`, `Swift Actors`, `Sendable`, `Task Groups`, `AsyncSequence`, `AsyncStream`, `Async Algorithms`

</details>

#### Key Points
- Detailed exploration of Swift's concurrency features including async/await, tasks, task groups, actors, and more.
- Practical examples illustrate how to optimize code performance with concurrency.
- Explanation of concepts like re-entrancy, interleaving, and thread safety through Sendable protocol.
- Introduction to advanced topics such as continuations, AsyncSequence, AsyncStream, and Async Algorithms.
- Emphasis on practical application in real-world scenarios like network requests and UI updates.

#### Summary of Contents
- **Introduction:** Overview of Swift concurrency tools and their importance in modern iOS development.
- **Main Sections:** Detailed explanations and examples of async/await, async let, Task, Task group, Actors, MainActor, and Sendable.
- **Technical Details:** Discusses nuances of async functions, structured concurrency, and cooperative cancellation.
- **Applications and Examples:** Practical examples including fetching data from APIs, handling UI updates, and managing complex asynchronous workflows.
- **Conclusion:** Encourages developers to integrate Swift concurrency tools into their coding practices for enhanced performance and scalability.

<LinkCard title="Read Full Article" href="https://www.emergetools.com/blog/posts/swift-async-await-the-full-toolkit?ref=createwithswift.com" />



## Design

### The Sound of Software

<details>

**URL:** https://notboring.software/words/the-sound-of-software

**Published:** April 25, 2024  

**Authors:** Andy & Thomas Williams

**Tags:**  
`sound design`, `software development`, `user experience`, `audio implementation`

</details>

#### Key Points
- Emphasizes the importance of sound design in software development, contrasting its neglect with the attention given to visual design.
- Discusses various roles of sound in software, including communication, emotional impact, and immersion.
- Provides practical guidelines for integrating sound into applications effectively.
- Highlights techniques such as variation, layering, and thematic coherence in sound design.
- Addresses implementation challenges like user control, device compatibility, and the use of spatial audio.

#### Summary of Contents
- **Introduction:** Discusses the overlooked role of sound in software user experience compared to visuals.
- **When To Use Sound:** Guidelines on incorporating sound to convey information, enhance interactions, and create immersive environments.
- **Designing Sound:** Techniques for creating engaging soundscapes through variation, layering, and thematic consistency.
- **Creating Relationships:** Importance of maintaining consistency and differentiation in sound design across related actions.
- **Implementing Sound:** Practical advice on integrating sound into applications, including considerations for user settings and device compatibility.
- **Enhancing User Control:** Advocates for providing users with control over sound settings to manage intrusiveness.
- **Spatial Audio:** Discusses the potential of spatial audio to enhance immersion in software applications.
- **Getting Started:** Steps for beginners to experiment with sound design tools and resources.
- **Conclusion:** Advocates for intentional sound design to enrich user experiences and elevate software quality.

<LinkCard title="Read Full Article" href="https://notboring.software/words/the-sound-of-software" />


