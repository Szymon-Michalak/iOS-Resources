---
slug: WhatsTheDifferenceBetweenSelfVsSelf
title: What's the difference between Self vs self?
authors: [szymon]
tags: [swift]
---


In the context of protocols and extensions, `Self` refers to the type that conforms to the protocol whereas `self` refers to the value inside that type.

Consider this extension:
```swift
extension Int {
// Self here refers to the conforming type (Int)
func square() -> Self {
// self refers to the value of the Int itself i.e. 2
self * self
}
}

// self in the code above would now equal 2
let width = 2

// Output: 4
print(width.square())
```

Additionally, you can use `Self` to limit the conformance of a `protocol` to only specific types:

```swift
protocol Squareable where Self: Numeric {
    func square() -> Self
}

extension Squareable {
func square() -> Self {
    self * self
    }
}
```
Now, our `Squareable` protocol is only available to types that conform to `Numeric`.
