---
title: "Swift Composable Architecture"
description: "A library for building applications in a consistent and understandable way with composition, testing, and ergonomics."
sidebar_label: "Swift Composable Architecture"
---

The **Swift Composable Architecture (TCA)** is a powerful library for building applications in a modular and composable manner. It provides tools to manage state, compose features, perform side effects, and test applications comprehensively, all within a consistent structure.

<details>

**Repository URL:** [Swift Composable Architecture on GitHub](https://github.com/pointfreeco/swift-composable-architecture)

**Documentation:** [Official Documentation](https://pointfreeco.github.io/swift-composable-architecture)

**Authors:** Point-Free

**Tags:**  
`state-management`, `composition`, `modularity`, `Swift`, `architecture`

</details>

## Features
- **Composable architecture**: Build reusable and testable modules with ease.
- **Declarative state management**: Cleanly model application state and manage transitions.
- **Side effects handling**: Integrate effects in a manageable and testable way.
- **Focus on testing**: Provides robust tools to test every part of the application.

## Installation

### Using Swift Package Manager (SPM)

To add Swift Composable Architecture to your project:

1. Open your project in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste the repository URL:  
   `https://github.com/pointfreeco/swift-composable-architecture`
4. Choose your desired version and click "Add Package".

Alternatively, add it directly to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.50.0")
]
```

## Core Concepts

### 1. **State**
Define the application's state as a struct. Each screen or feature's state is clearly represented and encapsulated.

```swift
struct AppState {
    var counter: Int = 0
}
```

### 2. **Actions**
Actions describe user interactions or events that change the state.

```swift
enum AppAction {
    case increment
    case decrement
}
```

### 3. **Reducers**
Reducers tie state and actions together, defining how state should evolve based on actions.

```swift
let appReducer = Reducer<AppState, AppAction, Void> { state, action, _ in
    switch action {
    case .increment:
        state.counter += 1
        return .none
    case .decrement:
        state.counter -= 1
        return .none
    }
}
```

### 4. **View**
Integrate the architecture with SwiftUI views.

```swift
struct AppView: View {
    let store: Store<AppState, AppAction>

    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                Text("Counter: \(viewStore.counter)")
                HStack {
                    Button("-") { viewStore.send(.decrement) }
                    Button("+") { viewStore.send(.increment) }
                }
            }
        }
    }
}
```

### 5. **Side Effects**
Handle side effects using `Effect` and dependency injection.

## Advantages
- **Scalability**: Designed for apps of all sizes.
- **Testability**: Achieve high test coverage with clearly defined state and logic.
- **Reusability**: Components can be reused across applications.
- **Clarity**: Encourages a structured and maintainable codebase.

## Resources
- [Point-Free Video Series](https://www.pointfree.co/collections/composable-architecture)
- [GitHub Discussions](https://github.com/pointfreeco/swift-composable-architecture/discussions)

<LinkCard title="Explore Swift Composable Architecture" href="https://github.com/pointfreeco/swift-composable-architecture" />
