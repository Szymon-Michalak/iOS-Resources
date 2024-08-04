---
slug: HowAreOptionalsImplemented
title: How are Optionals implemented?
authors: [szymon]
tags: [swift]
---

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

Since Swift is open-source, you can see the full `Optional` implementation here.

You can see that in the case of `.some` there’s an `associated value`; this is the non-nilcase of using an `Optional variable`.

Hopefully, you can see how simple language features like generics, enums, associated values, and value semantics enable us to build powerful and expressive language features like `Optionals` from just a few basic building blocks.

Finally, knowing that an `Optional` is simply an `enum` “under the hood” opens the door for us to create our own extensions on `Optionals` and add additional behavior and convenience methods.
