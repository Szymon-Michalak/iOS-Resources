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
    - [Mastering Closures in Swift: From Basics to Advanced Techniques](https://medium.com/swift-and-beyond/mastering-closures-in-swift-from-basics-to-advanced-techniques-a603d294258b)
  
  **Further Reading:**
    - [Closures Are Reference Types | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/#Closures-Are-Reference-Types)
</details>

Understanding how an `Optional` is implemented relies on a solid understanding of `value types` and `enums`.

Here’s a simplified version of Swift’s `Optional` implementation:

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

Since Swift is open-source, you can see the full `Optional` implementation [here](https://github.com/swiftlang/swift/blob/main/stdlib/public/core/Optional.swift).

You can see that in the case of `.some` there’s an `associated value`; this is the non-nilcase of using an `Optional variable`.

Hopefully, you can see how simple language features like generics, enums, associated values, and value semantics enable us to build powerful and expressive language features like `Optionals` from just a few basic building blocks.

Finally, knowing that an `Optional` is simply an `enum` “under the hood” opens the door for us to create our own extensions on `Optionals` and add additional behavior and convenience methods.
