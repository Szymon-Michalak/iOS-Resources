---
slug: WhatAreTheDifferencesBetweenTheStaticAndClassKeywords
title: What are the differences between the static and class keywords?
authors: [szymon]
tags: [general]
---

Both static and class keywords enable us to attach methods directly to a type rather than to an instance of the type. However, they differ in their ability to support inheritance.

When we use the static keyword on a function declaration,that function can no longer be overridden by a subclass. However, if we were to use the class keyword instead, overriding this function in a subclass would still be a possibility.

As we’ve previously discussed, thefinalkeyword attachedto aclassor function also prevents it from being subclassed or overridden. Therefore, it may be easier to remember that staticis equivalent tofinalclass.

```swift
class Dog {
    class func bark() -> String {
        return "Woof"
    }

    static func sit() -> Void {}
}

class ScoobyDoo: Dog {
    override class func bark() -> String {
        "Zoinks!"
    }

    // ERROR: Cannot override static method
    override static func sit() -> Void {}
}
```

As a `final` point, since functions declared with the `class` keyword can be overridden, this means that they must be dynamically dispatched. In contrast, and unsurprisingly, when you declare a function with thestatickeyword, that functioncall is now statically dispatched.