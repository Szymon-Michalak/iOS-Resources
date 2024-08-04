---
slug: WhatDoesTheLazyKeywordDo
title: What does the lazy keyword do?
authors: [szymon]
tags: [swift]
---

The `lazy` keyword allows you to defer the initialization of a variable until the first time it’s used; it’s similar to the concept of "lazy loading".

In the following example, the fake User variable will not be initialized until the first time the property is accessed. This allows us to prevent the slow process of creating the object until we’re absolutely sure we’ll need it:

```swift
lazy var fakeUser = try! User(dictionary:
JSONService.parse(filename:"FakeUserJSON"))
```

There’s a few important things to note when working with `lazy` variables.

Firstly, a `lazy` property must always be declared asa variable. The `lazy` property won’t have an initial value until **after** the containing object’s initialization is complete. So, we’ll need to be able to update the variable’s value at a later point in the application’s execution. Moreover, the initial value of the `lazy` property could be dependenton some outside factors which means the appropriate initialization value cannot be determined until runtime. So, for both these reasons, the `lazy` property needs to be mutable.

It’s also common to create a `lazy` property for objects that are computationally expensive to initialize as there’s no point creating an expensive resource if it’s never used.

```swift
// Creating a DateFormatter is expensive.
// lazy lets us ensure we only create it if we need it.
private lazy var dateFormatter:DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
    return dateFormatter
}()
```

It’s also important to understand the distinction between a `lazy` property and a computed property. A computed property regenerates its value every time it’s accessed whereas a `lazy` property creates its value once and then maintains it for the rest of the app’s execution.
