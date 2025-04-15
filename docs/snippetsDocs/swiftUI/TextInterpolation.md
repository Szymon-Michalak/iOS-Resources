---
title: "Localized Text Styling in SwiftUI with Interpolation"
description: "Demonstrates how to apply different styles to parts of a SwiftUI Text view using interpolation instead of concatenation, ensuring proper localization support."
---

This snippet contrasts two techniques for styling text in SwiftUI—concatenation and interpolation—and shows how interpolation supports more natural and grammatically correct localization. It's particularly useful for multilingual SwiftUI apps where UI text may need reordering or stylization.

<details>

**URL:** https://nilcoalescing.com/blog/TextConcatenationVsTextInterpolationInSwiftUI/

**Source:** [Text Concatenation vs. Interpolation in SwiftUI](https://nilcoalescing.com/blog/TextConcatenationVsTextInterpolationInSwiftUI/)

**Author:** `Natalia Panferova`

**Tags:**  
`SwiftUI`, `Localization`, `Text`, `Interpolation`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.9
</details>

# Snippet

### Concatenation
Styling applied using concatenation of multiple Text views.
This works visually but is problematic for localization.
```swift
Text("Tortilla chips with ") +
Text("spicy 🌶️🌶️🌶️").foregroundStyle(.red) +
Text(" dip")
```

### Interpolation
Preferred approach for localizable, styled text using interpolation.
Each `Text` segment is treated as a variable that can be reordered.
```swift
Text("Tortilla chips with \(Text("spicy 🌶️🌶️🌶️").foregroundStyle(.red)) dip")
```

## Insights

Although both concatenation and interpolation achieve the same visual result, interpolation is **localization-friendly**. It produces a single format string with placeholders, allowing translators to **reorder components** based on grammar rules of different languages. This eliminates issues with **spacing**, **segment order**, and **context loss**, making your SwiftUI text both stylish and globally correct.

- Works seamlessly with Xcode's String Catalog.
- Reduces localization bugs caused by fragmented text.
- Recommended for any styled text that needs to be translated.


<LinkCard title="View Full Blog Post" href="https://nilcoalescing.com/blog/TextConcatenationVsTextInterpolationInSwiftUI/" />
