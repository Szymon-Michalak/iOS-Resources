---
title: Fatbobman's Blog
description: Fatbobman's Blog is a platform offering a wide range of tutorials, articles, and insights focused on Swift, SwiftUI, and iOS development. The content is designed to help developers at various skill levels improve their knowledge and stay updated with the latest industry trends.
---

Fatbobman's Blog is a platform offering a wide range of tutorials, articles, and insights focused on Swift, SwiftUI, and iOS development. The content is designed to help developers at various skill levels improve their knowledge and stay updated with the latest industry trends.

<details>

**URL:** https://fatbobman.com/en/

**Authors:** `Fatbobman`

**Complexity Levels:**
   - **Beginner:** 25%
   - **Intermediate:** 45%
   - **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Tutorials:** 50% (Step-by-step guides and practical examples)
   - **Articles:** 40% (In-depth articles and best practices)
   - **News:** 10% (Updates on Swift and iOS development)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Collections:** Curated collections of articles on specific topics.
   - **Discord Community:** A place for discussion and support.

</details>

<LinkCard title="Visit Fatbobman's Blog" href="https://fatbobman.com/en/" />

---

## SwiftUI

### GeometryReader: Blessing or Curse?

The article explores the controversial use of GeometryReader in SwiftUI, addressing common criticisms and misunderstandings. It discusses its role in obtaining geometric information and its impact on layout and performance.

<details>

**URL:** https://fatbobman.com/en/posts/geometryreader-blessing-or-curse/  
**Published:** Nov 9, 2023  
**Last Updated:** Jun 18, 2024  
**Authors:** `Fatbobman`  
**Tags:**
`SwiftUI`, `GeometryReader`, `Layout`, `Swift`

</details>

#### Key Points

- GeometryReader is criticized for disrupting layout and lacking precise geometry information.
- It's often misunderstood as a layout container when its primary role is to read geometry.
- Performance issues arise from its use in complex layouts and its impact on view updates.
- SwiftUI updates introduced alternatives to some GeometryReader functionalities.

#### Summary of Contents

- **Introduction:** Discusses the historical context and developer sentiments towards GeometryReader.
- **Criticism and Misunderstandings:** Analyzes criticisms regarding layout disruption and inaccurate geometry.
- **Functionality and Usage:** Explores how GeometryReader functions as a geometry information provider.
- **Performance Considerations:** Details performance implications and alternatives.
- **Examples and Recommendations:** Provides practical examples and alternatives for typical use cases.
- **Conclusion:** Summarizes the role and impact of GeometryReader in SwiftUI development.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/geometryreader-blessing-or-curse/" />


### Layout in SwiftUI Way

The article explores various techniques in SwiftUI for achieving complex layout requirements, aiming to clarify its powerful yet sometimes confusing layout system. It emphasizes practical examples and comparisons to aid developers in mastering SwiftUI's layout capabilities.

<details>

**URL:** https://fatbobman.com/en/posts/layout-in-swiftui-way/  
**Published:** Mar 1, 2023  

**Authors:** `Fatbobman`  
**Tags:**
`SwiftUI`, `iOS Development`, `Layout Design`

</details>

#### Key Points

- Demonstrates multiple methods in SwiftUI for handling complex layout designs.
- Discusses the use of `offset`, `alignmentGuide`, `ScrollView`, `LayoutPriority`, `NameSpace`, and `Layout Protocol` for different layout scenarios.
- Highlights pros and cons of each approach and their suitability for different use cases.
- Provides practical insights and code examples to deepen understanding of SwiftUI's layout mechanics.

#### Summary of Contents

- **Introduction:** Overview of SwiftUI's layout system and its perceived complexities.
- **Offset:** Demonstrates using `offset` for basic vertical alignment adjustments.
- **AlignmentGuide:** Explains the use of `alignmentGuide` for precise layout alignment.
- **NameSpace:** Introduces `NameSpace` and `matchedGeometryEffect` for animation and layout synchronization.
- **ScrollView:** Discusses how to use `ScrollView` for handling scrolling and dynamic content.
- **LayoutPriority:** Covers `layoutPriority` for managing view priorities within layouts.
- **Layout Protocol:** Introduces the `Layout` protocol for creating custom layout containers.
- **Conclusion:** Summarizes key insights and recommendations for choosing the right layout approach in SwiftUI.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/layout-in-swiftui-way/" />

### How to Tile Images in SwiftUI
This article delves into two methods for image tiling in SwiftUI and introduces an alternative approach using a less common Image construction method. The discussion highlights the limitations of the commonly used `resizable` modifier and explores more flexible options introduced in recent SwiftUI updates.

<details>
**URL:** https://fatbobman.com/en/posts/how-to-tile-images-in-swiftui/

**Published:** July 31, 2024

**Authors:** [Fatbobman](https://twitter.com/fatbobman)

**Tags:**  
`SwiftUI`, `Image Tiling`, `iOS Development`, `UI Design`
</details>

#### Key Points
- The `resizable` modifier is a widely known method for tiling images in SwiftUI but comes with limitations such as lack of control over image size and selection.
- iOS 15 introduced the `foregroundStyle` modifier with `ImagePaint`, which provides a more intuitive and controllable method for image tiling.
- Custom `Image` construction methods offer advanced tiling capabilities but may have compatibility issues with some SwiftUI features and system versions.
- SF Symbols can be used for tiling with the custom `Image` approach to maintain full control over styling and rendering.

#### Summary of Contents
- **Introduction:** The article begins by addressing the common approach to image tiling in SwiftUI and the need for more flexible solutions.
- **resizable Modifier:** Details how to use the `resizable` modifier for tiling images and its limitations.
- **foregroundStyle and ImagePaint:** Explains the benefits of using `foregroundStyle` with `ImagePaint` for better control and flexibility.
- **Custom Image Construction:** Covers advanced techniques for creating custom `Image` instances to handle tiling, including examples and potential issues.
- **SF Symbols:** Discusses how to tile SF Symbols and the advantages of using custom `Image` methods to maintain symbol features and compatibility.
- **Conclusion:** Emphasizes the importance of exploring new SwiftUI tools and methods to enhance UI design and functionality.

<LinkCard title="Read Full Article" href="https://fatbobman.com/en/posts/how-to-tile-images-in-swiftui/" />
