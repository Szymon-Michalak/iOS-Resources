---
slug: WhatDoTheComparableEquatableAndHashableProtocolsDo
title: What do the Comparable, Equatable, and Hashable protocols do?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

**Equatable**
Implementing this protocol allows one instance of an object to be compared for equality with another instance of an object of the same type. You’ve probably leveraged this protocol without realizing it as theEquatableprotocol is what allowsus to use `==` to check the equality of two objects.

Adding `Equatable` support to your object allows your object to gain access to many convenient Swift APIs automatically. Furthermore, since `Equatable` is the base protocol for `Hashable` and `Comparable`, by adding `Equatable` conformance,we can easily extend our implementation to support creating Sets, sorting elements of a collection, and much more.

Let’s take a look at our `Money` struct:
```swift
struct Money {
    let value: Int
    let currencyCode: String
}
```

Currently, there’s no easy way for us to check if one `Money` object is equal to another `Money` object.

We can change that by conforming to `Equatable`:

```swift
struct Money: Equatable {
    let value: Int
    let currencyCode: String

    static func == (lhs: Money, rhs: Money) -> Bool {
        lhs.currencyCode == rhs.currencyCode && lhs.value == rhs.value
    }
}
```

Now, our adherence to the `Equatable` protocol and our subsequent custom implementation of
the `==` operator allows us to easily compare any two `Money` objects for equality.

Technically, we did some extra work though...

Since `Int` and `String` types are `Equatable` themselves, Swift can automatically synthesize the `==` implementation for us.

So, it’d be sufficient to just write:

```swift
struct Money: Equatable {
    let value: Int
    let currencyCode: String
}
```

**Hashable**
When an object implements the `Hashable` protocol it introduces a `hashValue` property which is useful in determining the equality of two objects and allows that object to be used with a `Set` or `Dictionary`.

The `hashValue` is an `Integer` representation of the object that will always be the same for any two instances that compare equally. In simple terms, this means that if we have two instances
of an object `A` and `B` then if `A == B` it must follow that `A.hashValue == B.hashValue`.

However, the reverse isn’t necessarily true. Two instances can have the same `hashValue`, but may not necessarily equal one another. This is because the process that creates the `hashValue` can occasionally create situations where two different instances generate the same `hashValue`.

The `Hashable` protocol only guarantees that two instancesthat are already known to be equal will also have the same `hashValue`.

It’s easy to add support for the `Hashable` protocol, but note that `Hashable` requires conformance to the `Equatable` protocol as well.

From Swift 4.1 onwards, we can have the compiler automatically synthesize conformance for us just like we did with `Equatable`. This functionality is only an option when the properties within the object conform to `Hashable`.

```swift
struct Money: Hashable {
let value: Int
let currencyCode: String
}
```

Otherwise, we’ll have to implement the `hashValue` generation ourselves. Swift 4.2 introduced a `Hasher` type that provides a randomly seeded universal hash function for us to use in our
custom implementations:
```swift
struct Money: Hashable {
    let value: Int
    let currencyCode: String

    func hash(into hasher:inout Hasher) {
        hasher.combine(value)
        hasher.combine(currencyCode)
    }
}
```

Conforming to the `Hashable` protocol allows you to use this object in a `Set` or as a `Dictionary` key. Many types in the standard library conform to `Hashable`: `Strings`, `Integers`, `Floats`, `Booleans`, and even `Set` are hashable by default.

**Comparable**
The `Comparable` protocol allows us to use our customtype with the `<`, `<=`, `>=`, and `>` operators.

The implementation of this protocol is quite clever. We only have to implement the less than operator `<` since the implementations of all ofthe other comparison operators can be inferred from `<` and our `Equatable` conformance.

This conformance allows us to use handy Swift methods like `sorted()`,`min()`, and `max()`on our objects in collections.

```swift
struct Money: Comparable {
    let value: Int
    let currencyCode: String

    static func < (lhs: Money, rhs: Money) -> Bool {
        lhs.value < rhs.value
    }
}
```
