---
title: Donny Wals
description: Donny Wals is an experienced iOS developer who shares his knowledge through a variety of resources including blog posts, books, courses, and workshops. His website is a valuable source for learning Swift and iOS development, featuring content for developers at all skill levels.
---

Donny Wals is an experienced iOS developer who shares his knowledge through a variety of resources including blog posts, books, courses, and workshops. His website is a valuable source for learning Swift and iOS development, featuring content for developers at all skill levels.

<details>

**URL:** https://www.donnywals.com

**Authors:** `Donny Wals`

**Complexity Levels:**
   - **Beginner:** 20%
   - **Intermediate:** 50%
   - **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Tutorials:** 60% (Step-by-step guides and practical examples)
   - **Articles:** 30% (In-depth articles and best practices)
   - **News:** 10% (Updates on Swift and iOS development)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Books and Courses:** Multiple books and courses available for in-depth learning.
   - **Workshops:** Regular workshops for hands-on learning experiences.

</details>

<LinkCard title="Visit Donny Wals" href="https://www.donnywals.com/" />

---

## **Concurrency** 

### 🔵 @preconcurrency Usage in Swift Explained

This article by Donny Wals provides a comprehensive overview of the **`@preconcurrency` attribute** in **Swift**. It explains how developers can use this attribute to **incrementally adopt strict concurrency checks** in their projects, even when dealing with **legacy code** or **dependencies** that haven't yet been updated for modern concurrency standards. The post includes practical examples and use cases that illustrate how to apply **`@preconcurrency`** in various scenarios, ensuring smoother transitions to **Swift's concurrency model**.

<details>

**URL:** https://www.donnywals.com/preconcurrency-usage-in-swift-explained/

**Published:** May 28, 2024

**Authors:** `Donny Wals`

**Tags:**  
`Swift`, `Concurrency`, `Swift 6`, `Xcode`

</details>

#### Key Points
- The **`@preconcurrency` attribute** helps in managing **concurrency warnings** from outdated modules by **suppressing them** when importing these modules.
- It allows developers to **update their code incrementally**, avoiding the **breaking changes** that **strict concurrency checks** might introduce.
- The attribute can be applied not only to **imports** but also to **classes**, **functions**, and **protocols** to maintain compatibility with **older codebases**.

#### Summary of Contents
- **Introduction to `@preconcurrency`:** Overview of the attribute and its importance in adopting strict concurrency checks in Swift.
- **Using `@preconcurrency` with Imports:** Detailed explanation of how to suppress concurrency warnings for modules that aren't fully compliant with **Swift's concurrency model**.
- **Applying `@preconcurrency` to Types and Functions:** Examples of using the attribute in **class declarations** to maintain compatibility with **older code**.
- **In Summary:** Recap of how **`@preconcurrency`** facilitates a **gradual transition** to **strict concurrency checks** as **Swift 6** approaches.

#### Additional Resources
- **Enabling Concurrency Warnings in Xcode 15:** [Link to resource](https://www.donnywals.com/enabling-concurrency-warnings-in-xcode-15/)
- **Level Up Your Swift Concurrency Skills:** [Practical Swift Concurrency Course](https://donnyplus.com/p/practical-swift-concurrency-the-video-course)

<LinkCard title="Read Full Article" href="https://www.donnywals.com/preconcurrency-usage-in-swift-explained/" />

## SwiftUI

### 🔵 Exploring SF Symbol Animations: Enhancing Your App's UI with Built-in Iconography

SF Symbols have revolutionized how iOS developers integrate iconography into their applications. With thousands of symbols available and a growing set of features, they offer a familiar, cohesive experience across Apple's ecosystem. This post explores the evolution of SF Symbols, focusing on the current state of SF Symbol animations and how developers can leverage these new features to create more dynamic and engaging user interfaces.

<details>

**URL:** https://www.donnywals.com/animating-sf-symbols-on-ios-18/

**Published:** 2024-09-18

**Authors:** `Author's Name`

**Tags:**  
`SF Symbols`, `iOS Development`, `Swift`, `UI Design`, `Animations`

</details>

#### Key Points
- **Evolution of SF Symbols:** Initially static, SF Symbols now offer various animation styles and effects that enhance UI design.
- **Simple yet Powerful Animations:** The introduction of symbol effects like `wiggle` and `variableColor` allows developers to animate symbols with minimal code.
- **Layered Animations:** Some symbols contain multiple layers that can be animated independently, offering even more flexibility in visual design.
- **State-Based Transitions:** SF Symbols can seamlessly animate transitions between different states, such as toggling notifications on and off.

#### Summary of Contents
- **Basic SF Symbol Animations:** An introduction to simple SF Symbol animations, demonstrating how easy it is to add animations using `symbolEffect`.
- **Layered Animations in Action:** Explores how symbols like the AirPods Pro case leverage their multiple layers for more complex effects.
- **Animating State Changes:** Discusses how to animate transitions between different symbol states, such as a bell icon indicating notifications.
- **Exploring Symbol Effects:** Encourages developers to experiment with the variety of symbol effects and their parameters, including periodic animations and transitions.

#### Additional Resources
- **SF Symbols 4:** [Apple's official SF Symbols documentation](https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/) for more in-depth guidance on available symbols.
- **SwiftUI Image View:** [Apple's documentation on Image views in SwiftUI](https://developer.apple.com/documentation/swiftui/image) to understand how symbols are integrated into the view hierarchy.

<LinkCard title="Read Full Article" href="https://www.donnywals.com/animating-sf-symbols-on-ios-18/" />

## Debugging

### 🔵 Modern Logging with the OSLog Framework in Swift

Logging is an essential aspect of debugging and profiling apps, replacing traditional `print` statements with a more robust, scalable solution. This article explores using the `OSLog` framework in Swift to set up effective logging strategies.

<details>

**URL:** https://www.donnywals.com/modern-logging-with-the-oslog-framework-in-swift/  
**Published:** 2024-11-19  
**Authors:** `Donny Wals`  
**Tags:** `Swift`, `OSLog`, `Debugging`, `Logging`, `Privacy`

</details>

#### Key Points
- **Enhanced Debugging:** `OSLog` provides structured logging with timestamps, subsystems, and categories, improving debugging compared to `print`.
- **Subsystems and Categories:** Create multiple loggers for different app modules, making filtering and tracing logs simpler.
- **Filtering Options:** Use Xcode or the macOS Console app to focus on specific subsystems or categories.
- **Privacy-Aware Logging:** Sensitive data can be redacted or hashed to ensure user privacy while maintaining useful logs.
- **Persistent Logs:** Logs can be stored and accessed outside of Xcode, aiding debugging in production environments.

#### Summary of Contents
- **Setting up a Logger:** Import `OSLog` and create a `Logger` instance. Customize with subsystems and categories for improved filtering.
- **Logging Messages:** Use the `log` method for basic messages and leverage log levels (`default`, `debug`, `error`, etc.) for granularity.
- **Log Management Tools:** 
  - **Xcode Console:** Displays logs with metadata like timestamps and subsystems.  
  - **macOS Console App:** Monitors live logs and filters across devices.
  - **In-App Log Viewer:** Retrieve and display logs using `OSLogStore` for better debugging during runtime.
- **Privacy Features:** Redact sensitive data or use hashing to protect user information in logs.
- **Advanced Techniques:** Implement structured log viewing and JSON export in your app for easier user log collection.

#### Additional Resources
- [OSLog Documentation](https://developer.apple.com/documentation/oslog)  
- [Forcing an App Out of Memory on iOS](https://www.donnywals.com/forcing-an-app-out-of-memory-on-ios/)  

<LinkCard title="Read Full Article" href="https://www.donnywals.com/modern-logging-with-the-oslog-framework-in-swift/" />

## Push Notifications

### 🔵 Updating Your Apps with Silent Push Notifications

Silent push notifications enable your app to stay up-to-date by fetching new data from the server in the background. This approach is especially useful for apps that need to provide timely updates without requiring user intervention. This guide covers how to configure your app and server to leverage silent push notifications effectively.

<details>

**URL:** [https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/](https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/)

**Published:** 2019-11-20

**Authors:** `Donny Wals`

**Tags:**  
`Silent Push Notifications`, `iOS Development`, `Background Fetch`, `AppDelegate`

</details>

#### Key Points
- **Silent Push Setup:** Configure your app with **Push Notifications** and **Background Modes** capabilities.
- **AppDelegate Methods:** Implement `application(_:didReceiveRemoteNotification:fetchCompletionHandler:)` for background updates.
- **Server Configuration:** Use `content_available: 1` in the payload and ensure proper headers like `apns-priority = 5` are set.
- **Performance Considerations:** Limit silent pushes to 2-3 per hour to avoid throttling by Apple.

#### Summary of Contents
- **Configuring Your App:** Steps to enable capabilities, register for remote notifications, and handle notification callbacks.
- **Handling Silent Pushes:** Guidance on implementing the `fetchCompletionHandler` for efficient data fetching.
- **Server-Side Requirements:** Explanation of payload headers and their role in triggering background fetches.
- **Best Practices:** Recommendations for responsible use to avoid penalties from Apple.

#### Additional Resources
- **[Real-time Data Exchange with Web Sockets](https://www.donnywals.com/real-time-data-exchange-using-web-sockets-in-ios-13/):** Explore alternatives for high-frequency updates.
- **[Firebase Cloud Messaging Documentation](https://firebase.google.com/docs/cloud-messaging):** Learn more about using Firebase for push notifications.

<LinkCard title="Read Full Article" href="https://www.donnywals.com/updating-your-apps-with-silent-push-notifications/" />

## Networking

### 🟢 Real-Time Data Exchange Using Web Sockets in iOS 13+

Web sockets provide a streamlined way to handle real-time communication in iOS apps by enabling a persistent connection between a client and server. This blog post explores how to use web sockets with `URLSession`, compares them with alternative networking methods, and offers practical implementation steps.

<details>

**URL:** [https://www.donnywals.com/real-time-data-exchange-using-web-sockets-in-ios-13/](https://www.donnywals.com/real-time-data-exchange-using-web-sockets-in-ios-13/)

**Published:** 2019-11-18

**Authors:** Donny Wals  

**Tags:**  
`Web Sockets`, `iOS Networking`, `Real-Time Communication`, `URLSession`

</details>

#### Key Points
- **Web Socket Advantages:** Enables bidirectional, low-latency communication with persistent connections.
- **Alternatives Discussed:**
  - Polling: Frequent requests for data with delays.
  - Silent Push Notifications: Efficient but introduces latency with batched updates.
  - Long-Polling: Keeps connections open but is less versatile for sending data.
- **Implementation Highlights:**
  - Connecting: Use `URLSessionWebSocketTask` for initiating a web socket connection.
  - Sending Messages: Send strings or data through the `Message` enum.
  - Receiving Messages: Set up a receive handler for incoming messages and ensure continuity with `defer`.

#### Summary of Contents
1. **Overview of Web Sockets:**
   - Persistent connection for real-time messaging.
   - Low-latency and small-payload optimizations.
2. **How Web Sockets Work in iOS:**
   - Leveraging `URLSession` for seamless integration.
   - Understanding the `webSocketTask` lifecycle.
3. **Code Walkthrough:**
   - **Connecting:** Set up a `webSocketTask` using `URLSession` and resume the task to establish the connection.
   - **Sending Messages:** Use `Message.string` or `Message.data` for different payload types.
   - **Receiving Messages:** Use a `Result` object for message handling and reset the receive handler to continue receiving.
4. **Best Practices:**
   - Predefine message types to maintain robust communication.
   - Use separate sockets for distinct contexts (e.g., chat messages vs. stock quotes).
   - Manage the handler lifecycle with `defer` to avoid losing incoming messages.

#### Additional Resources
- **[Apple Documentation on Web Sockets](https://developer.apple.com/documentation/foundation/urlsessionwebsockettask):** Learn more about `URLSessionWebSocketTask`.
- **[Networking with URLSession](https://developer.apple.com/documentation/foundation/urlsession):** Comprehensive guide to `URLSession`.

<LinkCard title="Read Full Article" href="https://www.donnywals.com/real-time-data-exchange-using-web-sockets-in-ios-13/" />
