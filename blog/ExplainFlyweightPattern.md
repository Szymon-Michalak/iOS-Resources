---
slug: ExplainFlyweightPattern
title: Explain the Flyweight Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Flyweight Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Flyweight Pattern** minimizes memory usage by sharing data between multiple objects. It is particularly useful when working with a large number of similar objects.
:::

### Concept Overview

The **Flyweight Pattern** is a structural design pattern that helps reduce memory consumption by sharing as much data as possible between similar objects. It consists of:

1. **Flyweight**: The shared object that contains the common data.
2. **Flyweight Factory**: Manages flyweights and ensures that new flyweights are only created if they don't already exist.

### Playground Example

The following example demonstrates the **Flyweight Pattern** using **UIKit** classes such as `UIColor`:

```swift
import UIKit

// Example of flyweights in action
let red = UIColor.red
let red2 = UIColor.red
print(red === red2)  // Output: true

// Custom colors are not flyweights
let color1 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
let color2 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
print(color1 === color2)  // Output: false
```

In this example, `UIColor.red` returns the same instance because it uses the flyweight pattern to minimize memory usage. However, creating custom colors always results in different instances.

You can extend the `UIColor` class to implement a custom flyweight:

```swift
extension UIColor {
    static var colorStore: [String: UIColor] = [:]

    class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        let key = "\(red)-\(green)-\(blue)-\(alpha)"
        if let color = colorStore[key] {
            return color
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        colorStore[key] = color
        return color
    }
}

// Usage
let flyColor1 = UIColor.rgba(1, 0, 0, 1)
let flyColor2 = UIColor.rgba(1, 0, 0, 1)
print(flyColor1 === flyColor2)  // Output: true
```

### How It Works:
- **Flyweight**: In this example, the `UIColor` class is extended to act as a flyweight. The colors are cached in `colorStore`, and when a request is made, the existing color is reused instead of creating a new instance.
- **Factory**: The `rgba` method acts as a flyweight factory that ensures colors are only created once and reused.

### When to Use

- **Minimizing memory usage**: When you have a large number of objects that share similar data and need to optimize memory consumption.

### When to Be Careful

- **Flyweight memory growth**: If you store too many flyweights, the memory consumption could still become an issue. Implement strategies like memory warnings or cache limits to avoid excessive memory usage.

---

:::tip[In Bullets]
- The **Flyweight Pattern** reduces memory usage by sharing objects.
- It involves a **flyweight** and a **factory** for managing shared instances.
- Particularly useful for caching, object pools, or any situation with repeated similar objects.
:::
