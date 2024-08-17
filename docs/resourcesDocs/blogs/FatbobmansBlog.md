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
