---
slug: WhatIsTheDifferenceBetweenPushingAndPresentingANewView
title: What is the difference between pushing and presenting a new view?
authors: [ace-the-ios-interview]
tags: [uikit]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Both pushing and presenting presentation styles have their own default behavior and conventions, so it’s important to understand the differences between the two.

A push transition will add another `UIViewController` to aUINavigationController’s view hierarchy. The `UIViewController` that originates thepush should belong to the same UINavigationControlleras the `UIViewController` thatis being added to the stack.

With a push transition, you will automatically get a back button from the new `UIViewController` to the previous one. Additionally,you’ll also get the ability to swipe to the right to pop the new `UIViewController` from the `UINavigationController’s` view hierarchy
without writing any additional code.

Push transitions are only available to `UIViewControllers` that are embedded in a `UINavigationController` instance.

Now, turning to presenting a `UIViewController`(i.e.modal transition).

This is simply the case of one `UIViewController` presentinganother `UIViewController` vertically over itself - neither of these `UIViewControllers` have to be embedded in a `UINavigationController`.

The modally presented `UIViewController` will typically appear without a `UINavigationBar` or `UITabBar` unless specified otherwise. Remember,though, that different versions of iOS havedifferent default styling for modally presented views.

Finally, the presenting `UIViewController` is generally responsible for dismissing any `modally`presented UIViewController it presents.
