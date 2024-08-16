---
slug: HowCanWeLimitAProtocolConformanceToASpecificClassOrType
title: How can we limit a protocol conformance to a specific class or type?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

There may be situations where we want to limit conformance of aprotocolto a certain type.

For example, conformance to `Numeric` is restricted to types that also conform to `AdditiveArithmetic` and `ExpressibleByIntegerLiteral`:

```swift
public protocol Numeric : AdditiveArithmetic, ExpressibleByIntegerLiteral
```

We can accomplish this by using the `where` keyword or `:` when declaring the protocol:

```swift
protocol TestViewController: UIViewController { }
protocol TestViewControllerAlternative where Self: UIViewController { }
```

When we restrict a protocol to only be used by a specific type, Xcode will automatically limit its auto-complete suggestions to only suggest the protocol when it’s applicable.

This syntax can also be applied to a protocol extension which allows you to provide default implementations on a case-by-case basis.

```swift
protocol Animal {
    func speak()
}

class Dog: Animal {}
class Cat: Animal {}

extension Animal where Self: Dog {
    func speak() {
        print("Woof!")
    }
}

extension Animal where Self: Cat {
    func speak() {
        print("Meow!")
    }
}
```


What if we wanted ourprotocolto only be supported by types that also implement some other protocol?

We can take care of that too:

```swift
protocol SecureHashable: Hashable {
    var secureHash: String { get }
}
```
