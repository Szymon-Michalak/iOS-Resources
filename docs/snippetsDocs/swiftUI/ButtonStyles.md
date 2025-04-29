---
title: "Convenient ButtonStyle & LabelStyle Extensions in SwiftUI"
description: "Add static extension helpers to your custom `ButtonStyle` and `LabelStyle` so you can use the compact `.buttonStyle(.capsule)` and `.labelStyle(.adaptive)` syntax in any SwiftUI view."
---

A tiny helper pattern that turns any custom `ButtonStyle` or `LabelStyle` into a one-line, discoverable modifier. By adding static factory properties or functions in a constrained extension, you unlock the same concise API Apple’s built-ins use—keeping call-sites clean and familiar.

<details>

**URL:** https://useyourloaf.com/blog/swiftui-label-and-button-style-view-modifiers/  

**Source:** [Use Your Loaf blog post](https://useyourloaf.com/blog/swiftui-label-and-button-style-view-modifiers/)  

**Author:** `Keith Harrison`  

**Tags:**  
`swiftui`, `buttonstyle`, `labelstyle`, `extensions`

**Platforms Supported:** iOS, macOS, visionOS  

**Swift Version:** 5.1
</details>

## Code

```swift
// 1️⃣ Custom LabelStyle that adapts to size-class
struct AdaptiveLabelStyle: LabelStyle {
    @Environment(\.horizontalSizeClass) private var sizeClass

    func makeBody(configuration: Configuration) -> some View {
        if sizeClass == .compact {
            VStack {
                configuration.icon
                configuration.title
            }
        } else {
            Label(configuration)
        }
    }
}

// 🔗 One-line helper
extension LabelStyle where Self == AdaptiveLabelStyle {
    static var adaptive: AdaptiveLabelStyle { AdaptiveLabelStyle() }
}

// 2️⃣ Custom ButtonStyle with configurable color
struct CapsuleButtonStyle: ButtonStyle {
    let color: Color
    init(_ color: Color = .yellow) { self.color = color }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundStyle(.black)
            .background(color, in: Capsule())
            .fontDesign(.monospaced)
            .symbolVariant(configuration.isPressed ? .fill : .none)
    }
}

// 🔗 One-line helper with parameter support
extension ButtonStyle where Self == CapsuleButtonStyle {
    static func capsule(_ color: Color = .yellow) -> CapsuleButtonStyle {
        CapsuleButtonStyle(color)
    }
}
```

## Usage

```swift
VStack(spacing: 16) {
    Label("Favourite", systemImage: "star")
        .labelStyle(.adaptive)

    Button("Start", systemImage: "play.circle") { /* action */ }
        .buttonStyle(.capsule(.orange))
}
```

## Discussion
The constrained-extension trick (`where Self == …`) lets Swift infer the concrete type, enabling static factories that feel like enum cases. Your view code stays concise, autocompletion shows the style, and the approach scales to any custom style—parameterised or not.

## Notes
- **Flexibility:** Works with any `ButtonStyle`/`LabelStyle`; just change the concrete type and returned instance.  
- **Compatibility:** Requires Swift 5.1+ (when protocol extensions gained this syntax); fully compatible with iOS 13 / macOS 10.15 upwards.


<LinkCard title="View Full Snippet" href="https://useyourloaf.com/blog/swiftui-label-and-button-style-view-modifiers/" />