---
slug: WhatIsTheDifferenceBetweenStrongWeakAndUnowned
title: What is the difference between strong, weak, and unowned?
authors: [szymon]
tags: [memory]
---

Please see the previous answer’s explanation of Automatic Reference Counting.

All of these keywords are different ways of describing how one object maintains a reference to another object.

strongis the default keyword in iOS and will incrementthe reference count of whatever object it’s referring to.

`weak` does not increment the reference count and the object it references can be `nil`. This is commonly used when working with delegates.

`unowned` does not increment the reference count either,but promises that the value it references will not be `nil` during its lifetime.
