---
title: "Using the Swift Package Manager (SPM)"
description: "Learn how to manage dependencies in your Swift project using the Swift Package Manager, from adding packages to configuring targets."
---

The Swift Package Manager (SPM) simplifies dependency management in Swift projects. Integrated into Xcode, SPM allows you to add, manage, and update dependencies directly from your project.

<details>

**URL:** [https://swift.org/package-manager/](https://swift.org/package-manager/)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`Swift`, `SPM`, `Dependency Management`, `Xcode`

**Platforms Supported:** macOS, Linux

**Swift Version:** 5.x
</details>

## Adding a Dependency with SPM

### Step 1: Open the `Package.swift` File
In Xcode, navigate to the `Package.swift` file. You’ll see the project’s package configuration, including the dependencies.

### Step 2: Add a Dependency
Add a new package dependency to the `dependencies` array:
```swift
.package(url: "https://github.com/Kitura/BlueSocket.git", from: "1.0.0"),
```
This line adds the `BlueSocket` package, specifying that any version from `1.0.0` onwards is acceptable.

### Step 3: Update the Project
After adding the dependency, run the following command to fetch and build the package:
```bash
vapor build
```
This command ensures that all dependencies are correctly integrated into your project.

### Step 4: Understanding Versioning
SPM allows for specific version constraints:
- **Exact version:** `.exact("1.2.3")`
- **Up to next major version:** `.upToNextMajor("1.2.3")`
- **Up to next minor version:** `.upToNextMinor("1.2.3")`

### Step 5: Configure Targets
In the `targets` section, specify which packages apply to which targets:
```swift
targets: [
    .target(
        name: "App",
        dependencies: [
            .product(name: "Fluent", package: "fluent"),
            .product(name: "Vapor", package: "vapor"),
            .product(name: "BlueSocket", package: "BlueSocket")
        ]
    )
]
```
This configuration allows you to fine-tune how dependencies are used across different targets.

## How SPM Works
SPM pulls code from Git repositories, using tags to determine versions. It manages dependencies and ensures compatibility with your Swift version, as specified by the `// swift-tools-version` line in `Package.swift`.

## Conclusion
SPM provides a streamlined way to manage dependencies in Swift projects, fully integrated with Xcode. Whether you're working on server-side or client-side Swift, SPM makes it easy to keep your projects up-to-date and organized.

## Related Snippets
- [Managing CocoaPods Dependencies](#)
- [Building with Carthage](#)

<LinkCard title="Learn More about SPM" href="https://swift.org/package-manager/" />
