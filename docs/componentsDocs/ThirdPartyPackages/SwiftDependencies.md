---
title: "Swift Dependencies"
description: "A lightweight and flexible dependency management library for Swift applications."
sidebar_label: "Swift Dependencies"
---

The **Swift Dependencies** framework provides a concise and flexible way to manage dependencies in Swift applications. Designed with modularity and testability in mind, it integrates seamlessly into modern Swift architectures and ensures robust dependency injection.

<details>

**Repository URL:** [Swift Dependencies on GitHub](https://github.com/pointfreeco/swift-dependencies)

**Documentation:** [Official Documentation](https://swiftpackageindex.com/pointfreeco/swift-dependencies/main/documentation/dependencies)

**Authors:** Point-Free

**Tags:**  
`dependency-management`, `injection`, `modularity`, `Swift`, `architecture`

</details>

## Features
- **Dependency injection**: Provides an intuitive API for dependency resolution and injection.
- **Modularity**: Easily manage and decouple application dependencies.
- **Testability**: Enable precise control of dependencies during testing.
- **Lightweight**: Minimal impact on project complexity with a lightweight design.

## Installation

### Using Swift Package Manager (SPM)

To add Swift Dependencies to your project:

1. Open your project in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste the repository URL:  
   `https://github.com/pointfreeco/swift-dependencies`
4. Choose your desired version and click "Add Package".

Alternatively, add it directly to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "0.1.0")
]
```

## Core Concepts

### 1. **Dependency Container**
Use a centralized container to manage all dependencies.

```swift
import Dependencies

@Dependency(\.date) var dateProvider: () -> Date
```

### 2. **Defining Dependencies**
Define dependencies within `DependencyValues` to ensure consistency across the application.

```swift
extension DependencyValues {
    var date: () -> Date {
        get { self[DateKey.self] }
        set { self[DateKey.self] = newValue }
    }
}

private enum DateKey: DependencyKey {
    static let liveValue: () -> Date = Date.init
}
```

### 3. **Injecting Dependencies**
Inject custom or mock dependencies for testing or alternative configurations.

```swift
let container = DependencyValues {
    $0.date = { Date(timeIntervalSince1970: 0) }
}
```

## Advantages
- **Scalability**: Scales well for applications of all sizes.
- **Testability**: Facilitates dependency injection for unit and integration tests.
- **Customizability**: Easily swap dependencies for different environments.
- **Consistency**: Centralized dependency management ensures consistency.

## Resources
- [GitHub Repository](https://github.com/pointfreeco/swift-dependencies)
- [Point-Free Blog](https://www.pointfree.co)

<LinkCard title="Explore Swift Dependencies" href="https://github.com/pointfreeco/swift-dependencies" />
