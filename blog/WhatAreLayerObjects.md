---
slug: WhatAreLayerObjects
title: What are layer objects?
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

Every `UIView` has a `CALayer` property which is responsible for the actual rendering of visual content and animations.

That’s why we’ll often write code like this:

```swift
layer.shadowOpacity = 0.3
layer.shadowRadius = 2
layer.shadowOffset = CGSize(width: 0 , height: 2 )
layer.borderWidth = 0
```

We’re giving instructions directly to the rendering component of the `UIView`.

There is an important distinction between the `UIView` and the `CALayer`. The `UIView` takes care of its own layout and placement, but it is the `CALayer` that is responsible for rendering its actual contents, including borders, shadows, corner radius, complex animations, and other visual effects.
