---
title: "Measuring View Visibility Percentage in SwiftUI Using PreferenceKeys"
description: "A SwiftUI snippet demonstrating how to calculate the percentage visibility of a view on the screen using PreferenceKeys and geometry."
tags: [SwiftUI, PreferenceKeys, ViewVisibility, GeometryReader]
---

### Overview

SwiftUI provides a robust mechanism called **PreferenceKeys**, which can be used to pass data up the view hierarchy. This snippet demonstrates how to calculate how much of a view is visible on the screen as a percentage, which is useful for animations, triggering actions, or dynamically loading content.

**Source**: [Measuring View Visibility in SwiftUI](https://holyswift.app/measuring-view-visibility-percentage-in-swiftui-using-preferencekeys/)
---

### Code Example

#### Step 1: Define a Custom PreferenceKey

```swift
struct BottomPreferenceKey: PreferenceKey {
    typealias Value = Anchor<CGRect>?
    static var defaultValue: Value = nil
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}
```

#### Step 2: Apply the PreferenceKey in a View

```swift
struct ColorBoxList: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ColorBox(color: index == 5 ? .black : .blue)
                        .anchorPreference(
                            key: BottomPreferenceKey.self,
                            value: .bounds
                        ) { $0 }
                }
            }
        }
        .onPreferenceChange(BottomPreferenceKey.self) { value in
            calculateVisibility(using: value)
        }
    }
    
    private func calculateVisibility(using bounds: Anchor<CGRect>?) {
        // Add visibility logic here
    }
}
```

#### Step 3: Use GeometryReader to Calculate View Visibility

```swift
struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ColorBoxList()
                .onPreferenceChange(BottomPreferenceKey.self) { value in
                    if let bounds = value {
                        let percentage = calculatePercentage(using: bounds, in: geometry)
                        print("Visibility: \(percentage)%")
                    }
                }
        }
    }

    private func calculatePercentage(using bounds: CGRect, in geometry: GeometryProxy) -> CGFloat {
        let viewHeight = bounds.height
        let globalY = geometry.frame(in: .global).maxY
        return 100 - ((bounds.maxY - globalY) / viewHeight) * 100
    }
}
```

---

### Explanation

- **PreferenceKeys**: A way to pass data up the SwiftUI view hierarchy.
- **GeometryReader**: Used to determine the position of views relative to the screen.
- **Visibility Calculation**: Converts view bounds and positions into a percentage.

---

### Benefits
- **Dynamic Interfaces**: Trigger animations or load content based on visibility.
- **Efficiency**: Lightweight logic for robust interaction tracking.

---

### Further Reading

- **Apple Documentation**: [SwiftUI PreferenceKey](https://developer.apple.com/documentation/swiftui/preferencekey)
- **Tutorial**: [Measuring View Visibility in SwiftUI](https://holyswift.app/measuring-view-visibility-percentage-in-swiftui-using-preferencekeys/)
