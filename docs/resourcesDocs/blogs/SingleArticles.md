---
title: Single Articles
description: Single Articles
sidebar_position: 1
---

## **Best Practices**

### 🔴 There Are 2 Ways to Violate 'S' in SOLID

This article delves into the complexities of the **Single Responsibility Principle (SRP)** in the context of **iOS development**. Using a case study of a `TransactionCellView` in a **table view**, it demonstrates how the addition of a **button** that alters the cell's layout based on specific conditions can lead to the violation of **SRP**. The article highlights the importance of avoiding the creation of **"God objects"** and **over-abstraction**, advocating for a **refactor** that moves decision-making logic out of the cell and into a more appropriate **architectural layer**. This ensures that each component retains a **single responsibility**, making the codebase more **maintainable** and **scalable**.

<details>

**URL:** [There Are 2 Ways to Violate 'S' in SOLID](https://isaac-weisberg.medium.com/there-are-2-ways-to-violate-s-in-solid-9c327e7e4b40)

**Published:** April 30, 2021

**Authors:** `Isaac Weisberg`

**Tags:**  
`SOLID principles`, `Single Responsibility Principle`, `iOS development`, `Swift`, `software architecture`

</details>

#### Key Points
- The article highlights **two distinct ways** in which the **Single Responsibility Principle (SRP)** can be violated in **iOS development**.
- The case study involves a `TransactionCellView` where the addition of a **button** based on **conditional logic** introduces **multiple responsibilities** within the cell.
- The solution proposed involves **refactoring** to move decision-making logic out of the cell to ensure **SRP compliance** and maintain a **clean architecture**.

#### Summary of Contents
- **Introduction:** Overview of the importance of **SOLID principles** in interviews and development.
- **Case Study:** Analysis of the `TransactionCellView` and how it violates **SRP**.
- **Problem Analysis:** Discussion on the problems of having a single class handling **multiple responsibilities**.
- **Solution:** Detailed **refactor proposal** to restore **SRP** by moving logic out of the cell and into a **dedicated layer**.

#### Additional Resources
- **[SOLID Principles Explained](https://example.com/solid-principles):** A comprehensive guide to **SOLID principles** in software development.
- **[Refactoring Techniques](https://example.com/refactoring-techniques):** Tips and techniques for effective **code refactoring**.
- **[iOS Architecture Patterns](https://example.com/ios-architecture-patterns):** An overview of different **architecture patterns** used in **iOS development**.

<LinkCard title="Read Full Article" href="https://isaac-weisberg.medium.com/there-are-2-ways-to-violate-s-in-solid-9c327e7e4b40" />

### 🔵 Writing Good Unit Tests

This article by Chris Mash, published on Dev Genius, delves into the principles of writing **effective unit tests** in **software development**. It highlights the importance of having **"good" unit tests** that **validate code behavior** accurately, ensuring the **reliability** of your codebase during **refactoring** or updates. The article also explores **Test Driven Development (TDD)** as a method to foster **better unit testing practices**.

<details>

**URL:** https://blog.devgenius.io/writing-good-unit-tests-2158be9ee82d

**Published:** October 17, 2023

**Authors:** `Chris Mash`

**Tags:**  
`unit-testing`, `software-development`, `TDD`, `iOS`

</details>

#### Key Points
- **Importance of Good Unit Tests:** **Good unit tests** ensure that the **code behaves as expected** by **isolating** the **subject under test** and providing **meaningful coverage**.
- **Examples of Poor vs. Improved Tests:** The article offers **concrete examples** of how to **improve test cases**, making them more likely to **catch issues**.
- **Test Driven Development (TDD):** **TDD** is highlighted as a strategy to write **better tests** by integrating **testing** into the **development process** from the start.

#### Summary of Contents
- **Characteristics of Good Unit Tests:** Discusses what makes a unit test **effective**, emphasizing the need for tests to **validate behavior** in **detail** and **isolation**.
- **Examples of Poor vs. Improved Tests:** Provides **side-by-side comparisons** of **poor** and **improved test cases**, showing how to refine tests to **detect more issues**.
- **Test Driven Development (TDD):** Explains the **TDD process**, offering practical advice on adopting it to write tests that **enhance code quality** and **maintainability**.
- **Summary:** Recaps the importance of **early** and **isolated testing**, and the value of **good unit tests** beyond mere **code coverage**.

#### Additional Resources
- **[TDD Manifesto katas](https://tddmanifesto.com/exercises/):** Exercises to practice **TDD techniques**.
- **[Kata-log katas](https://kata-log.rocks/tdd):** Additional **katas** to enhance **TDD skills**.

<LinkCard title="Read Full Article" href="https://blog.devgenius.io/writing-good-unit-tests-2158be9ee82d" />

### 🔴 The Advanced Guide to UserDefaults in Swift

This blog post provides an in-depth exploration of **UserDefaults** in **Swift**, particularly with the enhancements introduced in **Swift 5**. The article guides readers on effectively using **UserDefaults** for **small data storage** and delves into its **internal structure** and **performance considerations**. It also covers advanced topics like **designing type-safe key-value storage** using **property wrappers** and **observing changes** in **UserDefaults**.

<details>

**URL:** https://www.vadimbulavin.com/advanced-guide-to-userdefaults-in-swift/

**Published:** December 9, 2019

**Authors:** `Vadim Bulavin`

**Tags:**  
`Swift`, `iOS`, `UserDefaults`, `Swift 5`, `Property Wrappers`

</details>

#### Key Points
- **UserDefaults Overview:** Understand the use of **UserDefaults** for storing **small data** and the types of data it supports.
- **Internal Structure:** Explore how **UserDefaults** are stored as **.plist files** and the implications of this structure on **performance**.
- **Advanced Implementation:** Learn how to create **type-safe key-value storage** using **property wrappers** in **Swift**.
- **Observing Changes:** Implement mechanisms for **observing changes** in **UserDefaults** values using **Key-Value Observing (KVO)**.

#### Summary of Contents
- **Introduction:** A brief overview of the **evolution** of **UserDefaults** in the context of **Swift's development**.
- **UserDefaults Overview:** Detailed discussion on what kind of data should be stored in **UserDefaults** and its **internal implementation**.
- **Key-Value Storage Implementation:** Step-by-step guide to **implementing type-safe key-value storage** using **property wrappers**.
- **Observing UserDefaults:** Techniques to **observe changes** in **UserDefaults** values, enhancing **app responsiveness** and **data integrity**.
- **Conclusion:** A recap of key insights about using **UserDefaults** effectively in modern **Swift** applications.

#### Additional Resources
- **[The Complete Guide to Property Wrappers in Swift 5](https://www.vadimbulavin.com/swift-5-property-wrappers/):** A comprehensive guide to understanding and using **property wrappers** in **Swift**.
- **[swift-corelibs-foundation](https://github.com/apple/swift-corelibs-foundation):** Explore the **foundation source code** for a deeper understanding of **UserDefaults** internals.

<LinkCard title="Read Full Article" href="https://www.vadimbulavin.com/advanced-guide-to-userdefaults-in-swift/" />

## **SwiftUI**

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

## **Xcode and Workflow**

### 🟢 Multi-Cursor Editing in Xcode

**Multi-cursor editing** is a **powerful feature** in **Xcode** that allows developers to place **multiple cursors** in their code **simultaneously**, enabling **efficient editing** across multiple lines or sections. This feature is particularly useful for **repetitive tasks** such as **renaming variables** or **adjusting code structures**. The blog post explores different **methods** to **activate** and **utilize multi-cursor editing**, provides **practical examples**, and highlights the **benefits** of incorporating this feature into your **workflow**.

<details>

**URL:** https://sarunw.com/posts/multi-cursor-editing-in-xcode/

**Published:** November 11, 2020

**Authors:** `Sarun Wongpatcharapakorn`

**Tags:**  
`Xcode`, `Workflow`, `iOS Development`

</details>

#### Key Points
- **Efficient Code Editing:** **Multi-cursor editing** speeds up **code modifications** by allowing **simultaneous changes** across multiple locations.
- **Practical Use Cases:** Useful in tasks like **initializing custom coding keys** and **changing method parameter indentation styles**.
- **Easy to Use:** **Multiple methods** to enable and disable **cursors**, making it adaptable to different **coding styles**.

#### Summary of Contents
- **What is a Cursor?** A brief explanation of what a **cursor** is in the context of **code editing**.
- **What is Multi-Cursor Editing?** Introduction to **multi-cursor editing**, its **purpose**, and how it can enhance **coding efficiency**.
- **How to Use It?** **Step-by-step instructions** on various methods to **enable** and **manage multiple cursors**, including using **clicks**, **arrow keys**, and **dragging**.
- **Why Do We Need This?** Discussion on the **advantages** of **multi-cursor editing**, supported by **practical examples**.

#### Additional Resources
- **Add custom SwiftUI view to View Library with LibraryContentProvider:** A guide on how to add **custom SwiftUI views** to **Xcode’s view library**.
- **Useful Xcode shortcuts for unit testing:** A compilation of handy **Xcode shortcuts** that streamline **unit testing** processes.
- **How to create a macOS app without storyboard or xib files:** Instructions on **building macOS apps** without relying on **storyboards** or **xib files**.

<LinkCard title="Read Full Article" href="https://sarunw.com/posts/multi-cursor-editing-in-xcode/" />


### 🔵 Using @DebugDescription in Xcode 16

Learn how to enhance debugging in **Swift** by utilizing the **`CustomDebugStringConvertible`** protocol and the new **`@DebugDescription`** macro introduced in **Xcode 16**. This article guides you through **customizing debug outputs**, ensuring **clearer** and more **informative** insights during development. Whether you're working with **complex custom types** or just aiming for more **readable debugging information**, these tools can significantly **streamline your workflow**.

<details>

**URL:** [Original Blog Post](https://digitalbunker.dev/debug-description-macro-xcode-16/?ref=createwithswift.com)

**Published:** July 21, 2024

**Authors:** `Aryaman Sharda`

**Tags:**  
`Xcode`, `Swift`, `Debugging`, `CustomDebugStringConvertible`, `@DebugDescription`

</details>

#### Key Points
- The **`CustomDebugStringConvertible`** protocol allows developers to **customize the debug output** of custom types, providing more **detailed** and **readable** information.
- The new **`@DebugDescription`** macro in **Xcode 16** improves the **quality of life** by integrating **custom debug descriptions** directly into **Xcode's Variable Inspector** and **crash logs**.
- Developers using **older versions of Xcode** can still achieve similar functionality through **LLDB Type Summaries** and **`.lldbinit` configurations**.

#### Summary of Contents
- **Using CustomDebugStringConvertible:** An introduction to the **protocol**, its **implementation**, and the benefits of **customizing debug output**.
- **`@DebugDescription` Macro:** A detailed look at the **new macro**, how it works, and how it **enhances the debugging experience** in **Xcode 16**.
- **Macro Alternatives:** Alternatives for developers who cannot upgrade to **Xcode 16**, focusing on **LLDB Type Summaries** and **`.lldbinit` configurations**.

#### Additional Resources
- **[LLDB Type Summary Documentation](https://lldb.llvm.org/use/variable.html?ref=digitalbunker.dev):** Overview of how **LLDB Type Summaries** work.
- **[Pitch: Debug Description Macro - Swift Forums](https://forums.swift.org/t/pitch-debug-description-macro/67711/11?ref=digitalbunker.dev):** Discussion on the development and evolution of the **`@DebugDescription`** macro.
- **[Swift Debugging Tips](https://www.merowing.info/swift-debugging-tips/?ref=digitalbunker.dev):** Tips and tricks for **efficient debugging** in **Swift**.

<LinkCard title="Read Full Article" href="https://digitalbunker.dev/debug-description-macro-xcode-16/?ref=createwithswift.com" />

## **Localization**

### 🔵 Using XMLParser and NSAttributedString for Rich Text Formatting in Localizable Strings

This blog post discusses various methods for handling **rich text formatting** in **localizable strings** within **iOS development**. The author critiques common practices such as **concatenated strings**, **substring lookups**, and **HTML-based formatting**, highlighting their drawbacks in terms of **translation accuracy** and **performance**. The post concludes by proposing a more **efficient solution** using **XML parsing** to handle basic formatting with **NSAttributedString**.

<details>

**URL:** [Using XMLParser and NSAttributedString for Rich Text Formatting in Localizable Strings](https://kean.blog/post/formatted-strings)

**Published:** Nov 29, 2020

**Authors:** `Alex Grebenyuk`

**Tags:**  
`localization`, `iOS`, `NSAttributedString`, `XMLParser`, `performance`

</details>

#### Key Points
- **Concatenated Strings:** This method is **error-prone**, particularly in maintaining correct **word order** for translations. It assumes a **fixed sentence structure**, which may not hold across different languages.
- **Substring Lookup:** While better than concatenation, this approach can fail when a **substring** appears **multiple times**, leading to potential **translation** and **formatting issues**.
- **HTML for Formatting:** Although **HTML** provides more **control**, it is **slow** and can introduce **unnecessary complexity**. The author mentions **performance concerns**, especially on devices like the **iPhone 11 Pro**.
- **Proposed XML Parsing Solution:** The author suggests using **XMLParser** to handle **rich text formatting** in localizable strings. This method is described as being **faster** and more **reliable** than **HTML-based formatting**, particularly for **iOS applications**.

#### Summary of Contents
- **Poor Practices:** The author discusses the issues with **concatenated strings** and **substring lookup methods**, explaining how these practices can lead to significant **translation** and **performance challenges**.
- **HTML-Based Formatting:** The blog explores the use of **HTML** for **rich text formatting**, noting its limitations in terms of **performance** and the extra effort required to maintain proper **styling**.
- **Proposed XML Parsing Solution:** The main highlight of the article is the author's proposed solution using **XML parsing** to apply **text attributes**. This method is described as being **faster** and more **reliable** than **HTML-based formatting**, particularly for **iOS applications**.

#### Additional Resources
- **[10 Common Mistakes in Software Localization and How to Avoid Them](https://phrase.com/blog/posts/10-common-mistakes-in-software-localization/):** An article discussing common pitfalls in **localization** and strategies to avoid them.
- **[Hacking with Swift: How to Convert HTML to an NSAttributedString](https://www.hackingwithswift.com/example-code/system/how-to-convert-html-to-an-nsattributedstring):** A guide on converting **HTML** to **NSAttributedString** in **Swift**.

<LinkCard title="Read Full Article" href="https://kean.blog/post/formatted-strings" />

## **Concurrency**

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

## **Design**

### 🔵 The Sound of Software

**Sound** in software is often overlooked, yet it plays a **crucial role** in creating **engaging** and **immersive** user experiences. This article explores the **art and science** of **sound design** in software, offering **guidelines** on when to use sound, how to design it effectively, and how to implement it in your apps. With **practical examples** and **techniques**, it shows how sound can transform **mundane** software interactions into something much more **meaningful**.

<details>

**URL:** [Read Full Article](https://notboring.software/words/the-sound-of-software)

**Published:** April 25, 2024

**Authors:** `Andy & Thomas Williams`

**Tags:**  
`sound-design`, `software-design`, `user-experience`, `UI/UX`, `audio`

</details>

#### Key Points
- **Strategic Use of Sound:** Sound should be used to **communicate important actions**, **enhance moments**, and **create a sense of tangibility** in software.
- **Designing Sound:** Good sound design involves **breaking repetition through variation**, **layering sounds** for depth, and creating a **coherent soundscape**.
- **Implementation Techniques:** Consider **device settings**, provide **user control**, and **pair sound with haptics** to create a more **immersive experience**.

#### Summary of Contents
- **When to Use Sound:** Guidelines on where sound **adds value**, such as communicating actions or adding **"juice"** to key moments.
- **Designing Sound:** Techniques like **breaking repetition** with **variation**, **layering sounds**, and **building a coherent sound world**.
- **Implementing Sound:** Practical tips for **sound implementation**, including **overriding sound settings**, **pairing with haptics**, and **designing for target devices**.
- **How to Start:** Advice for beginners, from **getting and editing sounds** to **hiring a sound designer**.

#### Additional Resources
- **!Boring Sound Kit:** A collection of sounds used in !Boring apps to help you get started.
- **Meta Sound Kit:** A sound kit from Meta for **prototyping**.
- **Designing Sound (WWDC '17):** An Apple video on **sound design**.

<LinkCard title="Read Full Article" href="https://notboring.software/words/the-sound-of-software" />
