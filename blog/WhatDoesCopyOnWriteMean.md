---
slug: WhatDoesCopyOnWriteMean
title: What does copy on write mean?
authors: [szymon]
tags: [swift]
---

We know that when we’re working with types that use pass-by-value semantics, we’re passing around a copy of the value instead of a direct memory reference.

Now, imagine that the value type we’re working with is storing a lot of data - for example an `UIImage`.

If we aren't going to modify this array, it's pointless to duplicate it every time we pass it to a function or assign it to a new variable as this would introduce a lot of unnecessary overhead.

That’s why Swift employs a resource management technique called “copy on write”. This technique allows us to efficiently implement a “copy” operation on a modifiable resource.

If the resource in question is never modified, then there’s no need to create a duplicate of it. Instead, we can provide shared access to this resource until such time an operation attempts to modify it. Then, and only then, will Swift duplicate the value.

This approach lets the system significantly reduce the resource consumption of pass-by-value operations in exchange for adding a small overhead to resource-modifying operations.

This functionality is available by default in arrays and dictionaries, but you’ll have to explicitly add it to any new value types you introduce.
