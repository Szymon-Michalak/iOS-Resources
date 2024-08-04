---
slug: HowWouldYouLimitAFunctionOrAClassToASpecificIOSVersion
title: How would you limit a function or a class to a specific iOS version?
authors: [szymon]
tags: [swift]
---

We can accomplish this by using availability attributes. This language feature allows us to add support for newer APIs, methods, or classes while still maintaining backwards compatibility.

```swift
if #available(iOS 15 , *) {
    print("Hi! I can only run on iOS 15 and up.")
} else {
    print("I'll handle all other iOS versions.")
}

// The compiler will present an error if you try and use this
// class on any version < iOS 14.0
//
// The * serves as a wildcard and will allow this class to be available
// on all other platforms.
//
// We can just as easily check for macOS, watchOS, etc.
@available(iOS 14 , macOS 10.10, *)
final class HelloWorld {

}

// We can also mark a function as unavailable in a similar manner
@available(*, unavailable)

```
