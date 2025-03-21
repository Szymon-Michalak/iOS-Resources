### Previewable Macro in SwiftUI

A macro introduced in iOS 18 that simplifies the creation of preview wrapper views with `@State` bindings in SwiftUI.

<details>

**Sources & Resources**  
- **Primary Source:** [Use Your Loaf - SwiftUI Previewable Macro](https://useyourloaf.com/blog/swiftui-previewable-macro/)  
- **Additional Insights:** [Swift with Majid - The Power of Previews in Xcode](https://swiftwithmajid.com/2024/11/26/the-power-of-previews-in-xcode/)

**Tags:**  
`SwiftUI`, `iOS 18`, `Preview`, `@State`, `@Previewable`

**Platforms Supported:** iOS 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

**Swift Version:** 5.9

</details>

---

## Code Example

```swift
#Preview {
  @Previewable @State var showMessages: Bool = false
  SettingsView(showMessages: $showMessages)
}
```

---

## Why Previewable?

### Traditional Approach
When previewing SwiftUI views with `@Binding` properties, developers traditionally create wrapper views to manage the state:

```swift
private struct ContainerView: View {
    @State var showMessages: Bool = false
    var body: some View {
        SettingsView(showMessages: $showMessages)
    }
}

#Preview {
  ContainerView()
}
```

While effective, this adds boilerplate code, especially when managing multiple state properties.

### Using the Previewable Macro
The `Previewable` macro eliminates the need for wrapper views:

```swift
#Preview {
  @Previewable @State var showMessages: Bool = false
  SettingsView(showMessages: $showMessages)
}
```

This approach:
- **Simplifies Previews:** Automatically generates the wrapper view, reducing boilerplate.
- **Enhances Interactivity:** Supports interactive previews with `@State` bindings, mimicking runtime behavior.

---

## Beyond State Bindings: Advanced Use Cases

### Supporting Other Property Wrappers
The `Previewable` macro isn't limited to `@State`. It supports various SwiftUI property wrappers, such as `@Environment` and `@Query`, enabling dynamic previews:

```swift
#Preview {
    @Previewable @Query var items: [Item]
    ItemsView(items: items)
        .preferredColorScheme(.dark)
}
```

---

## Introducing PreviewModifier

### What is PreviewModifier?
A **PreviewModifier** allows developers to create reusable preview configurations, such as injecting mock data or setting up specific environments.

```swift
struct MockDataPreviewModifier: PreviewModifier {
    static func makeSharedContext() throws -> ModelContainer {
        let container = try ModelContainer(for: Item.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        populateContainer(container)
        return container
    }

    static func populateContainer(_ container: ModelContainer) {
        // Add mock data
    }

    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
}
```

Apply a `PreviewModifier` to a preview as follows:

```swift
#Preview(traits: .modifier(MockDataPreviewModifier())) {
    ItemsView()
}
```

### Benefits of PreviewModifier
1. **Reusable Environments:** Configure mock data or app-specific states once and reuse them across multiple previews.
2. **Performance Optimization:** Xcode caches contexts created by `PreviewModifier`, reducing overhead when previewing multiple instances.

---

## Discussion and Recommendations

The `Previewable` macro and `PreviewModifier` protocol transform how we approach previews in Xcode:
- Use **Previewable** for concise, interactive previews with inline property wrappers.
- Leverage **PreviewModifier** for complex preview setups, ensuring consistency and performance.

---

## Notes
- The `@Previewable` macro supports all SwiftUI platforms.
- **PreviewModifier** is ideal for creating environments with mock data or app-specific states, streamlining UI testing.

Enhance your previews and make SwiftUI development faster, cleaner, and more effective.