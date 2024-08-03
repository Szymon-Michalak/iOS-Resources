---
title: Creating an Analytics Service
description: A snippet for creating a generic analytics service that supports multiple providers like Firebase, MixPanel, and Google Analytics.
---

A snippet for creating a generic analytics service that supports multiple providers like Firebase, MixPanel, and Google Analytics.

<details>

**URL:** [Full Implementation](https://gist.github.com/aryamansharda/c0b5399de9fde061e9d46b61887be527)

**Source:** [Ace the iOS Interview](/docs/resourcesDocs/books/AceTheiOSInterview.md)

**Author:** `Aryaman Sharda`

**Tags:**  
`Analytics`, `iOS`, `Swift`, `Firebase`, `MixPanel`, `Google Analytics`

**Platforms Supported:** iOS

**Swift Version:** 5.0
</details>

### Key Points
- Design a loosely coupled analytics service.
- Use protocol-oriented programming to support multiple providers.
- Implement dependency injection for flexible provider configuration.

### Use Cases
- Logging analytics events in an iOS application.
- Switching between different analytics providers without code changes.
- Ensuring the analytics service is scalable and maintainable.

### Alternative Approaches
- Directly integrating with a single provider (e.g., Firebase).
- Using a third-party analytics library.
- Creating a custom analytics backend.

### Performance Considerations
- Ensure minimal performance overhead when logging events.
- Handle asynchronous logging to avoid blocking the main thread.
- Optimize for low memory footprint and efficient resource usage.

### Code

```swift title="AnatylicsManager.swift"
protocol AnalyticsProvider {
    func sendAnalyticsEvent(named name: String, metadata: [String : Any]?)
}

import FirebaseAnalytics

struct FirebaseAnalyticsProvider: AnalyticsProvider {
    func sendAnalyticsEvent(named name: String, metadata: [String : Any]?) {
        Analytics.logEvent(name, parameters: metadata)
    }
}

class AnalyticsManager {
    private var provider: AnalyticsProvider?
    static var shared = AnalyticsManager()
    private init() {}
    
    func configure(provider: AnalyticsProvider) {
        self.provider = provider
    }
    
    func track(eventName: String, metadata: [String: Any]?) {
        guard let provider = provider else {
            print("Analytics provider not provided.")
            return
        }
        provider.sendAnalyticsEvent(named: eventName, metadata: metadata)
    }
}
```

```swift title="AppDelegate.swift"
// Example configuration in AppDelegate
AnalyticsManager.shared.configure(provider: FirebaseAnalyticsProvider())
```

### Usage Example

```swift
// Tracking an event
AnalyticsManager.shared.track(eventName: "user_clicked_forgot_password", metadata: ["userID": "exampleUserID"])
```

### Related Snippets
- [Creating a Logger](#)
- [Networking and Basic Codables](#)

### References
- [Swift Documentation](https://swift.org/documentation/)
- [Firebase Analytics](https://firebase.google.com/docs/analytics)

<LinkCard title="Read Full Snippet" href="https://gist.github.com/aryamansharda/c0b5399de9fde061e9d46b61887be527" />
