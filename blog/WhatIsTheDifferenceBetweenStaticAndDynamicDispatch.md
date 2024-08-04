---
slug: WhatIsTheDifferenceBetweenStaticAndDynamicDispatch
title: What is the difference between static and dynamic dispatch?
authors: [szymon]
tags: [general]
---

Swift, like many other languages, allows a `class` to override methods and properties declared in its `superclass`. As a result, the program has to determine at **runtime** the correct version of the method or property to use.

This process is called dynamic dispatch.

Dynamic dispatch is implemented with the help of a method table (a.k.a. witness table). The witness table is used to figure out which implementation of a function to call - the `superclass’s` implementation or the `subclass’s` implementation.

Dynamic dispatch enables polymorphism which allows us to increase the expressiveness of our code, but it introduces a constant amount of runtime overhead every time we call a function. As a result, you’ll typically want to avoid polymorphism in performance sensitive
code.

If you don’t need dynamic dispatch (you don’t want the function or property to be overridden), you can improve performance by using the `final` keyword which prohibits overriding. This will allow us to use static dispatch instead which doesn’t incur this performance penalty. Moreover, static dispatch allows us to leverage additional compiler optimizations.

Finally, static dispatch is supported by both value and reference types. Dynamic dispatch is only supported by reference types as it requires inheritance and value types can’t support inheritance.
