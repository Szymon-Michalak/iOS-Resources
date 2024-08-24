---
slug: HowAreOptionalsImplemented
title: How are Optionals implemented?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    -  [Swift's Optional Implementation](https://github.com/swiftlang/swift/blob/main/stdlib/public/core/Optional.swift)
    -  [Swift Optionals Documentation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/)
  
  **Further Reading:**
    -  [Swift's Optional Implementation](https://github.com/swiftlang/swift/blob/main/stdlib/public/core/Optional.swift)
</details>

:::info[TL/DR]
Optionals in Swift are implemented as enums with two cases: `some`, which holds an associated value, and `none`, which represents a nil value.
:::

Optionals in Swift are a powerful feature that allow you to handle the absence of a value. Under the hood, Optionals are implemented as an enum with two cases: `some`, which contains an associated value, and `none`, which represents the absence of a value.

Here’s a simplified version of Swift’s Optional implementation:

```swift
public enum Optional<Wrapped>: ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
    
    public init(_ some: Wrapped) {
        self = .some(some)
    }
    
    public init(nilLiteral: ()) {
        self = .none
    }
}
```

In the case of `.some`, there's an associated value, which is the non-nil case of an Optional variable. This enum-based structure leverages Swift’s features like generics, associated values, and value semantics, enabling developers to build expressive and powerful constructs.

Knowing that an Optional is simply an enum opens up possibilities for extending Optionals with custom behavior and convenience methods.

#### Additional Details
Understanding the implementation of Optionals allows developers to create custom extensions on Optionals, adding additional behavior and convenience methods. It also emphasizes the importance of value types and enums in building robust language features.

```swift
extension Optional {
    func isSome() -> Bool {
        if case .some = self {
            return true
        }
        return false
    }
}
```

:::tip[In Bullets]
- **Optionals as Enums:** Swift Optionals are implemented as enums with two cases: `some` and `none`.
- **Associated Values:** The `some` case holds an associated value, representing a non-nil value.
- **Custom Extensions:** Understanding this allows for creating custom extensions to enhance Optional's functionality.
:::
