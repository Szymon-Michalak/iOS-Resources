# Swift with Majid

Swift with Majid is a blog by Majid Jabrayilov, focused on Swift development, particularly SwiftUI. The blog features detailed tutorials, insights into new SwiftUI features, and practical guides for developers. Regular posts cover various aspects of iOS development, including new API integrations, framework updates, and best practices in Swift.

<details>

**URL:** [https://swiftwithmajid.com](https://swiftwithmajid.com)

**Authors:** `Majid Jabrayilov`

**Tags:**  
`SwiftUI`, `Swift Development`, `iOS Development`, `Programming`, `APIs`

</details>

#### Overview
Swift with Majid is a valuable resource for Swift and SwiftUI developers, offering in-depth articles on new features and updates. The blog is updated regularly with content that helps developers stay current with the latest trends in iOS development.

#### Key Content Areas

##### Tutorials and Guides
- **Typed throws in Swift**: Overview of the new typed throws feature in Swift 6.0, enhancing type safety in error handling.
- **Tracking geometry changes in SwiftUI**: Discusses the new SwiftUI APIs for tracking view geometry changes.
- **Customizing windows in SwiftUI**: A guide on using new APIs to manipulate windows across Apple platforms.

##### Framework Insights
- **Mastering ScrollView in SwiftUI**: A series of posts diving into advanced ScrollView features like visibility, phases, geometry, and offset management.

##### Community and Support
- **SwiftUI Weekly**: A weekly newsletter that keeps developers informed about the latest SwiftUI updates and tips.

##### Target Audience
This blog is designed for Swift developers of all levels, particularly those who focus on SwiftUI and iOS development. It's ideal for professionals seeking to deepen their understanding of new Swift features and best practices.

##### Content Style and Format
The content is hands-on, with code examples and practical advice. Articles are structured to provide both theoretical understanding and practical implementation, making them useful for developers looking to apply new concepts in real-world projects.

##### Additional Features
- **SwiftUI Weekly Newsletter**: A regular update service providing curated content directly to your inbox.

<LinkCard title="Visit Swift with Majid" href="https://swiftwithmajid.com" />

## SwiftUI

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
