---
slug: WhatIsTheDifferenceBetweenBoundsAndFrame
title: What is the difference between bounds and frame?
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

This question is asked frequently during interviews, particularly as part of an initial phone screen or online assessment.

Theboundsof aUIViewis the rectangle expressedas a location(x,y)and size(width, height)relative to its own coordinate system(0,0).

The `frame` of a `UIView` is the rectangle expressed as a `location(x,y)` and `size(width, height)` relative to the superview it is contained within.

Here’s an example of the difference:

```swift
let sampleView = UIView(frame: CGRect(x: 20, y: 420, width: 100, height: 100 ))
sampleView.backgroundColor = .red
view.addSubview(sampleView)

// (20.0, 420.0, 100.0, 100.0)
print("Frame: ", sampleView.frame)
// (0.0, 0.0, 100.0, 100.0)
print("Bounds: ", sampleView.bounds)

let rotatedView = UIView(frame: CGRect(x: 100 , y: 300 , width: 100 ,height: 200 ))

// Rotating the view a bit
let transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4 )
rotatedView.transform = transform
rotatedView.backgroundColor = .blue
view.addSubview(rotatedView)

// (43.933982822017896, 293.93398282201787,
// 212.13203435596424, 212.13203435596427)
print("Frame: ", rotatedView.frame)

// (0.0, 0.0, 100.0, 200.0)
print("Bounds: ", rotatedView.bounds)
```

The image below should help clarify the difference between theframeand thebounds.