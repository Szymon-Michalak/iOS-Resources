---
slug: WhatIsTypeInference
title: What is type inference?
authors: [szymon]
tags: [swift]
---

Type inference is the mechanism that enables Swift to infer the type of a variable without us having to specify it explicitly. This generally lends itself to writing cleaner and more concise
code without compromising readability or type safety.

That’s why we can write this:
```swift
var welcomeMessage = "Hello"
```

Instead of having to write (a.k.a type annotations):
```swift
var welcomeMessage: String = "Hello"
```

The compiler is able to _infer_ that `welcomeMessage` is a `String` based off of the default value we’ve provided.

If we don’t specify a default value, then we’ll need to use type annotation to provide the compiler with the relevant information:
```swift
var red, green, blue: Double
```

