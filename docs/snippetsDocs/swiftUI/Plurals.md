---
title: "Pluralization and Markdown Styling with AttributedString in SwiftUI"
description: "Showcases how to use markdown and custom attributes in SwiftUI’s AttributedString system for styling, links, and dynamic pluralization—enabling more flexible and localizable UI text."
---

This snippet demonstrates how SwiftUI supports **markdown**, **custom attributes**, and **pluralization** directly within `Text` using `AttributedString` syntax. It also introduces a helpful extension for pluralizing phrases like "New Message" even when the number is not shown in the string—ideal for notifications or accessibility use cases.

<details>

**Source:** https://samwize.com/2025/04/11/plurals-with-swiftui/

**Author:** `Sam Wize`

**Tags:**  
`SwiftUI`, `Text`, `AttributedString`, `Pluralization`, `Markdown`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.9
</details>

## Snippet

### Markdown Styling in SwiftUI
Use built-in markdown syntax for common styles:

```swift
Text("**Bold world**")
Text("_Italy world_")
Text("~~Cancer~~ world")
Text("`Text(isGood)`")
Text("Link to [website](https://samwize.com)")
    .tint(.pink)
```

### Custom Attributes
You can annotate text with your own custom attributes:

```swift
Text("^[Text with foo & bar attributes](foo: xxx, bar: 123)")
```

This embeds metadata like `foo=xxx` and `bar=123` that can later be styled or handled programmatically.

---

### Basic Pluralization with `inflect`
Apply `inflect: true` to automatically pluralize based on a number:

```swift
Text("^[\(0) friend](inflect: true)") // 0 friends
Text("^[\(1) friend](inflect: true)") // 1 friend
Text("^[\(2) friend](inflect: true)") // 2 friends
```

Important: The number must appear in the visible text for inflection to work.

---

### Pluralization Without Showing the Number
For cases like a notification ("New Message" vs. "New Messages"), you can pluralize without displaying the number:

```swift
extension Text {
    init(_ text: String, countToInflect: Int) {
        if countToInflect == 1 {
            self.init("^[\(text)](morphology: { number: \"one\" }, inflect: true)")
        } else {
            self.init("^[\(text)](morphology: { number: \"other\" }, inflect: true)")
        }
    }
}

Text("New Message", countToInflect: 0) // New Messages
Text("New Message", countToInflect: 1) // New Message
Text("New Message", countToInflect: 2) // New Messages
```

## Insights

SwiftUI’s `AttributedString` allows rich styling and semantic annotations using lightweight syntax. Built-in support for **markdown**, **links**, and **pluralization** unlocks flexibility and cleaner localization workflows.

- Built-in support for bold, italic, strikethrough, and links via markdown.
- Annotate text with attributes that can be used for styling or logic.
- Handle pluralization cleanly—even when numbers aren’t part of the display string.
- Use `morphology` and `inflect` for localization-friendly dynamic text.

<LinkCard title="View Full Blog Post" href="https://samwize.com/2025/04/11/plurals-with-swiftui/" />
