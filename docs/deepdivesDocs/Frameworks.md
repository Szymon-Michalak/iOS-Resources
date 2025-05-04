# 🧩📦 Frameworks

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


### 🔵 Different Ways of Storing Images in CoreData

This post explores different strategies for storing images in CoreData, focusing on performance, memory usage, and compatibility with iCloud sync. The author walks through five methods and provides detailed insights into their performance metrics.

<details>

**URL:** [https://www.smork.info/blog/posts/different-ways-of-storing-images-in-coredata/#option-5-binary-property-using-original-data-from-photos-library](https://www.smork.info/blog/posts/different-ways-of-storing-images-in-coredata/#option-5-binary-property-using-original-data-from-photos-library)

**Published:** 2024-09-18

**Tags:**  
`CoreData`, `Swift`, `UIImage`, `iCloud`, `Persistence`

</details>

#### Key Points
- Explore various strategies for storing images in CoreData.
- Analyze performance, disk space usage, and RAM consumption for each approach.
- The focus is on finding the most efficient method compatible with iCloud sync.

#### Summary of Contents

- **Basic Setup:**  
  Creating a separate `Photo` entity with a one-to-many relationship with `Item` to help CoreData efficiently manage memory.

- **Option 1: Binary Data + External Storage:**  
  Storing image data with external storage enabled works but may present challenges when adding iCloud sync.

- **Option 2: NSKeyedArchiver with Transformable Property:**  
  This option, while functional, results in slow performance and high disk/RAM usage.

- **Option 3: UIImage.jpegData with Transformable Property:**  
  This method offers a balance between performance, disk usage, and compatibility.

- **Option 4: UIImage.pngData with Transformable Property:**  
  This method leads to larger files and slow performance, making it less practical.

- **Option 5: Storing Original Data from Photos Library:**  
  Storing the original image data directly is the most efficient, but it has limitations regarding direct camera use and permissions.

#### Additional Resources
- **[Apple Documentation on CoreData](https://developer.apple.com/documentation/coredata/):** Learn about CoreData fundamentals.
- **[Best Practices for iCloud Integration](https://developer.apple.com/documentation/icloud):** A guide to adding iCloud support in your app.
  
<LinkCard title="Read Full Article" href="https://www.smork.info/blog/posts/different-ways-of-storing-images-in-coredata/#option-5-binary-property-using-original-data-from-photos-library" />


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

## Natural Language Framework

### 🔵 Identifying Nouns, Adjectives, and More with the Natural Language Framework in a SwiftUI App

In this blog post, you will learn how to identify nouns, adjectives, and other parts of speech using the Natural Language framework in a SwiftUI app. The post guides you through setting up the `NLTagger` for lexical classification and integrating this functionality into a SwiftUI view to create a powerful text analysis tool.

<details>

**URL:** https://www.createwithswift.com/lexical-classification-with-the-natural-language-framework/

**Published:** 2024-08-26

**Authors:** `Antonella Giugliano`

**Tags:**  
`SwiftUI`, `Natural Language`, `iOS Development`, `Text Processing`

</details>

#### Key Points
- The Natural Language framework enables text processing and classification in SwiftUI.
- You can analyze text segments to identify parts of speech such as nouns, verbs, and adjectives.
- The `NLTagger` class plays a central role in segmenting and tagging text units.

#### Summary of Contents
- **Introduction to the Natural Language Framework:** Overview of how Apple’s Natural Language framework facilitates text analysis by segmenting and tagging text.
- **Code Example for Lexical Classification:** Step-by-step guide on how to use `NLTagger` for identifying parts of speech in text.
- **Integrating with SwiftUI:** Explanation on how to integrate the tagging functionality into a SwiftUI view, including a practical example with a `TextEditor`.
- **Displaying Results in SwiftUI:** Instructions on filtering and displaying the analyzed text data within a SwiftUI list, including counting verbs and identifying name types.

#### Additional Resources
- **[NLTagger Documentation](https://developer.apple.com/documentation/naturallanguage/nltagger?ref=createwithswift.com):** Official Apple documentation for `NLTagger`.
- **[NLTagScheme.LexicalClass Documentation](https://developer.apple.com/documentation/naturallanguage/nltagscheme/lexicalclass?ref=createwithswift.com):** Details on using the lexical class tag scheme in `NLTagger`.
- **[SwiftUI Official Documentation](https://developer.apple.com/documentation/swiftui):** Apple's official SwiftUI documentation.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/lexical-classification-with-the-natural-language-framework/" />


## Translation Framework

### 🟢 Checking Language Availability for Translation with the Translation Framework

This post covers how to use Apple's Translation framework to check if a language is available for translation within your iOS app. With the new framework, you can leverage local machine learning models to translate text directly on the device. However, not every language is available for translation, and this post explains how developers can manage this limitation by checking language availability through the `LanguageAvailability` class.

<details>

**URL:** [https://www.createwithswift.com/checking-language-availability-for-translation-with-the-translation-framework/](https://www.createwithswift.com/checking-language-availability-for-translation-with-the-translation-framework/)

**Published:** 2024-09-10

**Authors:** `Matteo Altobello`

**Tags:**  
`Translation`, `iOS Development`, `Swift`, `Localization`

</details>

#### Key Points
- **Translation Framework**: A powerful tool for translating content within iOS apps using machine learning models.
- **Language Availability**: Developers can use the `LanguageAvailability` class to check what languages are supported on the user’s device.
- **Translation Status**: The `status(from:to:)` method allows you to confirm if translation between two languages is supported, installed, or unsupported.
- **User Control**: Users can manage language models directly through the device’s Translate app, which impacts translation availability across apps.

#### Summary of Contents
- **Using LanguageAvailability Class**: Learn how to check and display all supported languages on the device.
- **Checking Translation Status**: Understand how to verify if translation between specific languages is available or unsupported using the `status(from:to:)` method.
- **Handling Language Models**: Guide for managing language models via the user interface in the Translate app, helping users remove or download language models.

#### Additional Resources
- **[LanguageAvailability Documentation](https://developer.apple.com/documentation/translation/languageavailability?ref=createwithswift.com)**: Official Apple documentation for `LanguageAvailability`.
- **[Meet the Translation API - WWDC24](https://developer.apple.com/videos/play/wwdc2024/10169/)**: Video introduction to the Translation API.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/checking-language-availability-for-translation-with-the-translation-framework/" />
