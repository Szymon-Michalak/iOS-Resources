---
slug: WhatIsTheDifferenceBetweenAnyAndAnyObject
title: What is the difference between Any and AnyObject?
authors: [szymon]
tags: [swift]
---


When we need to work with non-specific types, we have two options to pick from: `Any` and `AnyObject`.

`Any` is used to refer to any instance of a `class`, `struct`, `function`, `enum`, etc. This is particularly useful when you’re working with a variety of data:
```swift
let items: [Any] = [ 1 , UIColor.red, "Blue", Toggle()]
```

`AnyObject` is more restrictive as it refers to any instance of a `class` type. You’ll use this when you only want to work with reference types or when you want to restrict a `protocol` to only be
used with a `class` type:
```swift
protocol ClassOnlyProtocol: AnyObject {...}
```

In contrast, `Any` can be used with both `value` and `reference` types.

It’s preferable to be as specific as possible about the type you’re using, so I’d encourage you to only use `Any` or `AnyObject` when you specifically needthe behavior they provide.
