---
slug: WhatDoesTheFinalKeywordDo
title: What does the final keyword do?
authors: [szymon]
tags: [swift]
---

Imagine you are working on a SDK or a particularly sensitive piece of code - something that needs to be performant, secure, etc. You’d likely want to ensure that your code is used in exactly the way you intend it to be.

That’s where the `final` keyword comes in. The `final` keyword prevents aclassfrom being subclassed / inherited from and indicates to other developers that thisclassisn’t designed to be subclassed.

So, in the SDK example, you would likely mark relevant classes asfinalto ensure your code is used only in the way you intended.

Marking properties and functions as `final` tells theSwift compiler that the method should be called directly (static dispatch) rather than looking up a function from a method table (dynamic dispatch).

This reduces function call overhead and provides a small boost in performance.
