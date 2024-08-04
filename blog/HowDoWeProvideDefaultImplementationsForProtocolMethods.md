---
slug: HowDoWeProvideDefaultImplementationsForProtocolMethods
title: How do we provide default implementations for protocol methods?
authors: [szymon]
tags: [swift]
---

By leveraging Swift extensions, we can provide a default implementation for methods and properties declared in aprotocol.

This helps reduce boilerplate and duplicated code in classes that implement theprotocol while still allowing them to easily override the default implementation.

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

As you can see, we’ve provided the default implementation formakeNoise()in an extension.

Dogis using the default implementation whileCatis free to provide a more specific implementation.

This same approach allows us to make certain functions in ourprotocoloptional. Since we have provided a default implementation in our extension, any entity that implements the protocolis no longer required to implement it.

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

Alternatively, you can use `@objc` optional to make functions within your protocol optional.
This would, however, restrict your `protocol` to onlybe implemented by `class` type objects, which would prevent your `protocol` from being used by `structs`, `enums`, etc. You’d also need to explicitly check if that optional method is implemented before you call it.