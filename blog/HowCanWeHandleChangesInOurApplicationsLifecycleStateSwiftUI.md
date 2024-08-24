---
slug: HowCanWeHandleChangesInOurApplicationsLifecycleStateSwiftUI
title: How can we handle changes in our application’s lifecycle state? (SwiftUI)
authors: [szymon]
tags: [general, swiftui]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [The Ultimate Guide to the SwiftUI 2 Application Life Cycle](https://peterfriese.dev/blog/2020/ultimate-guide-to-swiftui2-application-lifecycle/)

  **Additional Sources:**
    - [Apple Developer Documentation - App](https://developer.apple.com/documentation/swiftui/app)
  
  **Further Reading:**
    - [Managing App Life Cycle with SwiftUI](https://developer.apple.com/documentation/swiftui/scenephase)
</details>

:::info[TL/DR]
In SwiftUI, you manage the application’s lifecycle using the `@Environment(\.scenePhase)` property, along with `onAppear` and `onDisappear` modifiers. The `scenePhase` property allows you to monitor and respond to changes in the app's lifecycle state.
:::

SwiftUI introduces a declarative way to manage an application's lifecycle without relying on the traditional `AppDelegate`. Instead, you use the `App` protocol and the `scenePhase` environment property to track and respond to changes in the app's state.

Here are the key components:

- **`@Environment(\.scenePhase)`**: Provides access to the current lifecycle state of the app, which can be `.active`, `.inactive`, or `.background`.
  
- **`onAppear(perform:)`**: This modifier is used to run code when a view appears on the screen.

- **`onDisappear(perform:)`**: This modifier allows you to execute code when a view disappears from the screen.

- **App Lifecycle States**:
  - **`.active`**: The app is currently active and in the foreground.
  - **`.inactive`**: The app is transitioning or is temporarily in an inactive state.
  - **`.background`**: The app is running in the background.

### Example SwiftUI Code

```swift
import SwiftUI

@main
struct MyApp: App {
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    // Handle view appearance
                }
                .onDisappear {
                    // Handle view disappearance
                }
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .active:
                // The app is active
                print("App is active")
            case .inactive:
                // The app is inactive
                print("App is inactive")
            case .background:
                // The app is in the background
                print("App is in the background")
            @unknown default:
                // Handle unexpected new phases
                break
            }
        }
    }
}
```

#### Additional Details
SwiftUI’s declarative lifecycle management allows for a more integrated approach to handling the state of your app, removing the need for a separate `AppDelegate` in most cases. However, you can still integrate an `AppDelegate` if needed, using the `UIApplicationDelegateAdaptor` property wrapper to bridge between UIKit and SwiftUI.

:::tip[In Bullets]
- **Lifecycle Management:** In SwiftUI, use the `@Environment(\.scenePhase)` property to track app state changes.
- **Declarative Modifiers:** Use `onAppear` and `onDisappear` to manage view-specific lifecycle events.
- **Integrated Handling:** Most lifecycle management can be handled within the SwiftUI `App` protocol, reducing the need for an `AppDelegate`.
- **State Monitoring:** The `scenePhase` provides a straightforward way to monitor `.active`, `.inactive`, and `.background` states.
:::
