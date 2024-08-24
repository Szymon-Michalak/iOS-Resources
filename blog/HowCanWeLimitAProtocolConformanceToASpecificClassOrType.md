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
Swift allows us to limit a protocol's conformance to a specific class or type by using the `where` keyword or by inheriting from a base class. This restriction can also be applied in protocol extensions to provide default implementations for specific types.
:::

When designing protocols in Swift, there may be situations where you want to restrict the types that can conform to a protocol. For example, you might want only certain subclasses or types that conform to other protocols to adopt your custom protocol. This can be achieved in two primary ways:

1. **Inheriting from a Base Class:**
   You can restrict protocol conformance by specifying a base class that the conforming types must inherit from.

   ```swift
   protocol TestViewController: UIViewController { }
   ```

   In this case, only subclasses of `UIViewController` can conform to the `TestViewController` protocol.

2. **Using the `where` Keyword:**
   Another way to limit conformance is by using the `where` clause in your protocol declaration.

   ```swift
   protocol TestViewControllerAlternative where Self: UIViewController { }
   ```

   This is similar to inheriting from a base class but provides more flexibility and can be used in various contexts, such as with protocol extensions.

### Example: Restricting Protocol Conformance in Extensions
You can also use these restrictions in protocol extensions to provide default implementations only for specific types.

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

In the above example, the `speak()` method is only implemented for `Dog` and `Cat` types.

### Limiting Conformance to Types that Conform to Another Protocol
If you want your protocol to only be adoptable by types that conform to another protocol, you can also enforce this using the `where` clause.

```swift
protocol SecureHashable: Hashable {
    var secureHash: String { get }
}
```

Here, only types that already conform to `Hashable` can conform to `SecureHashable`.

### Additional Details
Restricting protocol conformance is particularly useful in complex systems where you want to ensure certain behaviors are only available to specific types. This approach can help prevent misuse of protocols and provide a cleaner, more predictable API.

```swift
// Additional example: Restricting to classes that conform to another protocol
protocol LoggedInView where Self: UIViewController & UserSessionHandler {
    func showLoggedInView()
}
```

:::tip[In Bullets]
- **Restricting with a Base Class:** You can limit protocol conformance by specifying a base class, such as `UIViewController`.
- **Using `where`:** The `where` clause adds flexibility, allowing for restrictions based on class or protocol conformance.
- **Selective Extensions:** Apply protocol extensions conditionally to provide default implementations only for certain types.
:::
