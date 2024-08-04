---
slug: IsSwiftAStaticallyTypedLanguage
title: Is Swift a statically-typed language?
authors: [szymon]
tags: [swift]
---


Yes, Swift is a statically-type language - a language where variable types are known at compile time.

In order for a Swift program to compile successfully, the compiler must have all of the necessary information about the types of every class, function, and property. To make things easier for the programmer and to help reduce the verbosity of our code, Swift supports type inference. This enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.

That's why this code is totally valid even though we're not explicitly specifying the type:

```swift
var isApproved = true
```

In contrast to a statically typed language, we have dynamically typed languages. In a language of this variety, the types aren't determined at compile time, but are deferred until the actual point of sending a message to that object. In other words, the type is only known at runtime.

In Python, a dynamically typed language, the following code will compile, but will throw a runtime error due to the mismatched types:

```python
def willThrowRuntimeError():
    s = 'acetheiosinterview' + 1
```
