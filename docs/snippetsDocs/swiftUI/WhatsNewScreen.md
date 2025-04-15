---
title: "Versioned 'What’s New' Screens with @AppStorage in SwiftUI"
description: "Learn how to implement a lightweight 'What’s New' screen in SwiftUI by versioning a single @AppStorage key—no state machine required."
---

This snippet demonstrates how to implement a versioned “What’s New” screen using SwiftUI’s `@AppStorage` and a custom `AppSettings` environment. By incrementing a versioned key, you can trigger the view with **just one character change**, making this approach ideal for small post-release announcements.

<details>

**Source:** https://www.swiftjectivec.com/simply-whats-new-logic-in-swiftui-ios-apps/

**Author:** `Jordan Morgan`

**Tags:**  
`SwiftUI`, `AppStorage`, `UserDefaults`, `Announcements`, `EnvironmentValues`

**Platforms Supported:** iOS

**Swift Version:** 5.9
</details>

## Snippet

### Environment Setup
Define a custom environment key to access app-wide settings:

```swift
private struct AppSettingsKey: EnvironmentKey {
    static var defaultValue: AppSettings { .init() }
}

extension EnvironmentValues {
    var appSettings: AppSettings {
        get { self[AppSettingsKey.self] }
        set { self[AppSettingsKey.self] = newValue }
    }
}
```

### AppSettings with Versioned Flag
Create a new `@AppStorage` property tied to the latest release version:

```swift
final class AppSettings: ObservableObject {
    @AppStorage("hasSeenWhatsNewV13") var hasSeenWhatsNew: Bool = false
}
```

To trigger a new release screen, simply bump the version number:

```swift
// Before
@AppStorage("hasSeenWhatsNewV12") var hasSeenWhatsNew: Bool = false

// After
@AppStorage("hasSeenWhatsNewV13") var hasSeenWhatsNew: Bool = false
```

---

### Show Sheet After Launch
Trigger the “What’s New” sheet based on launch conditions:

```swift
private func showPostLaunchAnnouncementsIfNeeded() {
    guard deepLinker.linkedView == nil else { return }

    if !appSettings.needsViewOnboarding &&
        !appSettings.hasSeenWhatsNew &&
        appSettings.numberOfOpens >= 2 {
        appSettings.hasSeenWhatsNew = true
        deepLinker.sheetLinkedView = .whatsNew
    }
}
```

The sheet is presented from `.task` in your main view hierarchy:

```swift
.task {
    showPostLaunchAnnouncementsIfNeeded()
}
```

## Insights

This approach keeps your launch logic simple and scalable:
- Only change the key’s **version number** to trigger a new prompt.
- `@AppStorage` uses `UserDefaults`, so unknown keys default to `false`.
- Encourages minimalism and good timing for user engagement.

Perfect for sharing new features with returning users—**no extra state machine needed**.

<LinkCard title="View Full Blog Post" href="https://www.swiftjectivec.com/simply-whats-new-logic-in-swiftui-ios-apps/" />
