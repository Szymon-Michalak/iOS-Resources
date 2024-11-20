---
title: "Using UserDefaults to Persist Settings in SwiftUI"
description: "A snippet showcasing how to use SwiftUI's AppStorage property wrapper to create persistent user settings using UserDefaults."
tags: [SwiftUI, UserDefaults, AppStorage, iOS]
---

### Overview

In this snippet, we explore how to use **SwiftUI's AppStorage** to create a settings screen that persists user preferences across app launches. AppStorage simplifies working with UserDefaults while ensuring your UI automatically updates when values change.

**Source**: [Using UserDefaults To Persist in SwiftUI](https://holyswift.app/using-userdefaults-to-persist-in-swiftui/)
---

### Code Example

#### Step 1: Define Static Keys for UserDefaults

```swift
extension String {
    static var settingsUserNameKey: String { "settings.userName" }
    static var settingsUserAddressKey: String { "settings.userAddress" }
    static var settingsUserAdsEnabledKey: String { "settings.isAdsEnabled" }
    static var adPrivacyTypeKey: String { "settings.adPrivacyType" }
}
```

#### Step 2: Create a SwiftUI Settings View

```swift
import SwiftUI

struct ContentView: View {
    @AppStorage(wrappedValue: "No userName", .settingsUserNameKey)
    private var userName: String

    @AppStorage(.settingsUserAddressKey)
    private var userAddress: String = ""

    @AppStorage(.settingsUserAdsEnabledKey)
    private var isAdsEnabled: Bool = false

    @AppStorage(.adPrivacyTypeKey)
    private var adPrivacyType: AdPrivacyType = .noTracking

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $userName)
                TextField("Address", text: $userAddress)

                Toggle("Enable Ads", isOn: $isAdsEnabled)

                if isAdsEnabled {
                    Section(header: Text("Advertising Policy")) {
                        Picker("Select Your Policy", selection: $adPrivacyType) {
                            ForEach(AdPrivacyType.allCases) { policy in
                                Text(policy.rawValue).tag(policy)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
            }
            .navigationBarTitle("User Settings")
        }
    }
}

enum AdPrivacyType: String, CaseIterable, Identifiable {
    case noTracking = "No Tracking"
    case essential = "Only Essential Cookies"
    case full = "Standard Tracking"
    
    var id: String { rawValue }
}
```

---

### Explanation

1. **Static Keys for UserDefaults**: The `extension String` centralizes keys to avoid hardcoding across the app.
2. **@AppStorage**: This property wrapper automatically synchronizes values with UserDefaults and invalidates the view when values change.
3. **Dynamic UI**: The `Toggle` and `Picker` demonstrate how changes in AppStorage variables dynamically affect the UI.

---

### Benefits

- **Ease of Use**: Simplifies state management for persistent settings.
- **Dynamic Updates**: Automatically refreshes views when preferences change.
- **Code Organization**: Static keys keep the codebase clean and reusable.

---

### Learn More

- **Apple Documentation**: [AppStorage](https://developer.apple.com/documentation/swiftui/appstorage)
- **Related Article**: [How to Invert Any View in SwiftUI](https://holyswift.app/how-to-invert-any-view-in-swiftui/)
- **Security Considerations**: Avoid storing sensitive data in UserDefaults.
