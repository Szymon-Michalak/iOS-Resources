---
slug: WhatIsAutomaticReferenceCounting
title: What is automatic reference counting?
authors: [szymon]
tags: [memory]
---

In simple terms, ARC is a compile time feature that helps us manage memory on iOS. ARC simply counts how many `strong` references there areto an object and when the count is zero, that object can be freed from memory.

Remember only a `strong` reference increases the retaincount; a `weak` or `unowned` reference has no effect on the object’s retain count. In iOS, a `strong` reference is the default.

Imagine that there is some `UIViewController` that implements a delegate. Since we’re using a `strong` reference, we know the `UIViewController` is intentionally increasing the delegate’s retain count to prevent it from being cleared from memory. In turn, the delegate has a `weak` reference back to the `UIViewController` so there’s no change to the `UIViewController’s` retain count.

Instead, if we had a `strong` reference from the delegate back to the `UIViewController`, that would increment the retain count of the `UIViewController`.

Now, both items would have a retain count of one and neither object could ever be freed; the `UIViewController` depends on the delegate and the delegate depends on the `UIViewController`.

This is what we call a retain cycle.

We can prevent this retain cycle by making the delegate have a `weak` reference to the implementing object. Oftentimes, whenever a child object has a reference to its parent object, we’ll make it a `weak` reference in order to avoid this exact issue.

That’s why you’ll commonly see delegates declared with the `weak` keyword like this:
```swift
class LocationManager {
    weak var delegate: LocationManagerDelegate?
}
```
Note that the delegate is an `Optional` as anything with a `weak` reference _can be_ `nil` during its execution.
