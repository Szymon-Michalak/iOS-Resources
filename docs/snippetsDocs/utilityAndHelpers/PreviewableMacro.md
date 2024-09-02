### Previewable Macro in SwiftUI

A macro introduced in iOS 18 that simplifies the creation of preview wrapper views with State bindings in SwiftUI.

<details>

**Source:** [Use Your Loaf - SwiftUI Previewable Macro](https://useyourloaf.com/blog/swiftui-previewable-macro/)

**Author:** `Keith Harrison`

**Tags:**  
`SwiftUI`, `iOS 18`, `Preview`, `@State`, `@Previewable`

**Platforms Supported:** iOS 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

**Swift Version:** 5.9
</details>

## Code

```swift
#Preview {
  @Previewable @State var showMessages: Bool = false
  SettingsView(showMessages: $showMessages)
}
```

## Usage

### Traditional Approach
In SwiftUI, when previewing a view that requires a `@Binding` property, such as a toggle switch, you typically need to create a container or wrapper view to manage the state. For example:

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

This method works but requires additional boilerplate code to create the container view. While effective, this approach can become tedious, especially when dealing with multiple state properties.

### Using the Previewable Macro
The `Previewable` macro simplifies this process by automatically generating the necessary wrapper view. This allows you to directly declare `@State` properties in the `#Preview` block:

```swift
#Preview {
  @Previewable @State var showMessages: Bool = false
  SettingsView(showMessages: $showMessages)
}
```

This not only reduces the amount of boilerplate code but also keeps the preview more concise and readable. The `@Previewable` macro handles the creation of the wrapper view behind the scenes, providing a more streamlined experience for developers.

### Why Use the Previewable Macro?
- **Interactive Previews:** Unlike using a constant binding, which locks the view in a fixed state, the `Previewable` macro allows you to interact with the state in the preview, offering a more dynamic and realistic testing environment.
- **Reduced Boilerplate:** Eliminates the need to manually create wrapper views for every preview, saving time and reducing potential errors.
- **Cleaner Code:** Keeps your preview code cleaner and more focused on the actual UI components, rather than the surrounding infrastructure.

## Discussion
The `Previewable` macro, introduced in iOS 18, automates the creation of a boilerplate wrapper view required for previewing SwiftUI views with `@State` bindings. Instead of manually creating a container view, you can declare your `@State` properties directly within the `#Preview` block and annotate them with the `@Previewable` macro. This approach not only simplifies the preview setup but also enables interactive previews, allowing for real-time testing of UI components with state changes.

## Notes
- **Flexibility:** The `@Previewable` macro supports various platforms, making it a versatile tool for cross-platform SwiftUI development.
- **Compatibility:** Deploys back to iOS 17.0, macOS 14.0, tvOS 17.0, visionOS 1.0, and watchOS 10.0.
