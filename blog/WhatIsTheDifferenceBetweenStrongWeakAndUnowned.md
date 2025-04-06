---
slug: WhatIsTheDifferenceBetweenStrongWeakAndUnowned
title: What is the difference between strong, weak, and unowned?
authors: [ace-the-ios-interview]
tags: [memory]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::
All of these keywords are different ways of describing how one object maintains a reference to another object.

`strong`is the default keyword in iOS and will increment the reference count of whatever object it’s referring to.

`weak` does not increment the reference count and the object it references can be `nil`. This is commonly used when working with delegates.

`unowned` does not increment the reference count either,but promises that the value it references will not be `nil` during its lifetime.
