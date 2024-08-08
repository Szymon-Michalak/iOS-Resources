---
slug: HowAreContentHuggingAndContentCompressionResistanceDifferent
title: How are Content Hugging and Content Compression Resistance different?
authors: [ace-the-ios-interview]
tags: [uikit]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [Adaptive UI Layouts in Swift: Understanding Content Hugging and Compression Resistance | Swift And Beyond](https://medium.com/swift-and-beyond/content-hugging-and-content-compression-resistance-a0b6c9a9cd23)
  
  **Further Reading:**
    - [Advanced Auto Layout Toolbox | objc.io](https://www.objc.io/issues/3-views/advanced-auto-layout-toolbox/)
</details>

:::note[TL/DR]
- **Content Hugging**: Controls how much a view resists being stretched beyond its natural size. Higher priority = more resistance to growth.
- **Content Compression Resistance**: Controls how much a view resists being shrunk below its natural size. Higher priority = more resistance to shrinking.
:::

At its core, AutoLayout is a constraint solver. It will take some number of views and their constraints and try to formulate an arrangement that satisfies all of them.

Sometimes in this process, AutoLayout will make a view smaller than you’d like or may make it larger than you intend it to be.

In situations like this, we can leverage Content Hugging and Content Compression Resistance for more granular control over how AutoLayout resizes our views.

In order to understand how they work, we need to understand intrinsic content size. This is the minimum size views want to be to show all of their content.
For example, views like `UIImageViews`, `UIButtons`, and `UILabels` all know what their size should be in order to accommodate the content they’re meant to show.

Content Hugging Resistance represents how hard a view is going to fight against being made larger than its intrinsic content size. The higher the priority, the harder it’s going to resist growing.

Conversely, Content Compression Resistance represents how hard a view is going to fight against being made smaller than its intrinsic content size. The higher the priority, the harder it's going to resist shrinking.

So, when AutoLayout is trying to resolve constraints, it’s going to look at these properties and their respective priorities to figure out which views it can make larger and which views it can make smaller.

:::tip[In Bullets]

- **Content Hugging**
  - **Definition:** Measures how strongly a view resists growing larger than its intrinsic content size.
  - **Priority Impact:** Higher priority means the view resists being stretched more.
  - **Example:** A UILabel with high content hugging priority will avoid expanding beyond its text's natural width.

- **Content Compression Resistance**
  - **Definition:** Measures how strongly a view resists shrinking smaller than its intrinsic content size.
  - **Priority Impact:** Higher priority means the view resists being compressed more.
  - **Example:** A UIButton with high content compression resistance will avoid collapsing below its text's natural size.

- **Usage in AutoLayout**
  - AutoLayout uses these properties to balance view resizing based on constraints.
  - Content Hugging and Compression Resistance priorities guide how views are resized when constraints are ambiguous or conflicting.
:::