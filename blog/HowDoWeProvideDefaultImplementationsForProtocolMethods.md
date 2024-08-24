---
slug: HowDoWeProvideDefaultImplementationsForProtocolMethods
title: How do we provide default implementations for protocol methods?
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

By leveraging Swift extensions, we can provide a default implementation for methods and properties declared in a `protocol`.

This helps reduce boilerplate and duplicated code in classes that implement the `protocol` while still allowing them to easily override the default implementation.

```swift
protocol Animal {
func makeNoise()
}

extension Animal {
func makeNoise() {
print("Bark!")
}
}

struct Dog: Animal {}
struct Cat: Animal {
func makeNoise() {
print("Meow!")
}
}

let sparky = Dog()
sparky.makeNoise() // Bark!

let whiskers = Cat()
whiskers.makeNoise() // Meow!
```

As you can see, we’ve provided the default implementation for `makeNoise()`in an extension.

`Dog` is using the default implementation while `Cat` is free to provide a more specific implementation.

This same approach allows us to make certain functions in our `protocol` optional. Since we have provided a default implementation in our extension, any entity that implements the protocolis no longer required to implement it.

```swift
protocol MyProtocol {
    func doSomething()
}

extension MyProtocol {
    func doSomething() {
        /* Return a default value or just leave empty */
    }
}

struct MyStruct: MyProtocol {
    /* No compile error */
}
```

Alternatively, you can use `@objc optional` to make functions within your protocol optional.
This would, however, restrict your `protocol` to only be implemented by `class` type objects, which would prevent your `protocol` from being used by `structs`, `enums`, etc. You’d also need to explicitly check if that optional method is implemented before you call it.