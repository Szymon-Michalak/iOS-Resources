---
title: "Packaging and Sharing Models Between Server and App"
description: "Learn how to create reusable Swift packages for sharing models between your Vapor server-side project and your iOS app, enabling code reuse and consistency across platforms."
---

Swift allows you to create packages that can be shared between your server-side Vapor projects and iOS apps, streamlining development and ensuring consistency across platforms.

<details>

**URL:** [https://swift.org/package-manager/](https://swift.org/package-manager/)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`Swift`, `SPM`, `Vapor`, `Code Sharing`

**Platforms Supported:** macOS, Linux, iOS

**Swift Version:** 5.x
</details>

## Creating a Reusable Swift Package

### Step 1: Create a Swift Package
In Xcode, go to `File > New > Swift Package` and name it `TaskModule`. This will create a new Swift package project with a structure ready for adding shared models.

### Step 2: Define the Model
Add a new file, `TaskViewModel.swift`, and define your model:
```swift
import Foundation

enum Category: String {
    case shopping = "shopping"
    case work = "work"
}

public final class TaskViewModel {
    var category: Category?
    var title: String?
    var imageUrl: URL?

    public convenience init(title: String, category: String) {
        self.init()
        self.category = Category(rawValue: category)
        self.title = title
        self.imageUrl = URL(string: "https://www.test.com/\(category)")
    }
}
```
This view model is platform-agnostic, allowing it to be used in both server and client projects.

### Step 3: Integrate the Package with the Vapor Project
In your Vapor project, open `Package.swift` and add the local path to the new package:
```swift
dependencies: [
    .package(path: "/path/to/your/TaskModule")
],
targets: [
    .target(
        name: "App",
        dependencies: [
            .product(name: "TaskModule", package: "TaskModule"),
            // other dependencies
        ]
    )
]
```
This will link your `TaskModule` package with your Vapor project, making it available for use.

### Step 4: Use the Package in Your Vapor Project
Import the package into any file where you need the shared model:
```swift
import TaskModule

let viewTask = TaskViewModel(title: "Buy milk", category: "shopping")
```
This allows you to use the same model in both server-side and client-side Swift projects.

### Step 5: Use the Package in Your iOS App
To use the package in your iOS app, ensure your `TaskModule` is initialized as a Git repository:
```bash
git init
git add .
git commit -m "Initial commit"
```
Then, add it as a dependency in your iOS project using `File > Swift Packages > Add Package Dependency...` and provide the local path:
```text
file:///Users/username/path/to/TaskModule
```
Now, you can import and use `TaskModule` in your iOS app just as in your Vapor project.

## How It Works
Sharing models between server-side and iOS projects using Swift packages simplifies code management and ensures consistency across platforms. By using Swift Package Manager (SPM), you can easily integrate shared code into both your server and client projects, avoiding duplication and improving maintainability.

### Platform-Specific Code
To handle platform-specific code, use conditional compilation:
```swift
#if os(Linux)
import LinuxModule
#elseif os(iOS)
import UIKit
#endif
```
This ensures your package works across different platforms, such as Linux for server-side code and iOS for client-side code.

## Conclusion
Swift's ability to share code between server-side and client-side projects through packages enhances productivity and code reuse. By packaging models and logic into reusable modules, you maintain consistency and reduce duplication in your projects.

## Related Snippets
- [Using Swift Package Manager in iOS Projects](#)
- [Building Modular Swift Code](#)

<LinkCard title="Learn More about Swift Package Manager" href="https://swift.org/package-manager/" />
