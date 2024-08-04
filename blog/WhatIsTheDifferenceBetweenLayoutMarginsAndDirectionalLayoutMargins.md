---
slug: WhatIsTheDifferenceBetweenLayoutMarginsAndDirectionalLayoutMargins
title: What is the difference between layout margins and directional layout margins?
authors: [szymon]
tags: [uikit]
---


`layoutMargins` is a property of a `UIView` that allows the developer to specify the top,left, bottom, and right insets for a view’s margin. The system defaults a `UIView` to an inset of 16
pixels on all edges.

```swift
override func viewDidLoad() {
super.viewDidLoad()

greetingLabel.translatesAutoresizingMaskIntoConstraints = false

greetingLabel.centerYAnchor.constraint(
equalTo: view.centerYAnchor).isActive = true
greetingLabel.leadingAnchor.constraint(
equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
greetingLabel.trailingAnchor.constraint(
equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
}
```

As you can see, theUIViewis inset 16 pixels from the left.

We can easily customize it with our own values:

```swift
override func viewDidLoad() {
super.viewDidLoad()


view.layoutMargins = UIEdgeInsets(top: 0 , left: 100 ,
bottom: 0 , right: 0 )

greetingLabel.translatesAutoresizingMaskIntoConstraints = false
greetingLabel.centerYAnchor.constraint(
equalTo: view.centerYAnchor).isActive = true
greetingLabel.leadingAnchor.constraint(
equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
greetingLabel.trailingAnchor.constraint(
equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
}
```

All constraints relative to thelayoutMarginswillnow honor the custom insets we specified
above:

But, there’s a silent issue here. What happens if our device uses a language that lays out right to left like Hebrew or Farsi? In that case, we’d want ourleftedge inset to start from the right-hand side and vice-versa.


We can use `directionalLayoutMargins` to fix this. This property was introduced in iOS 11 and should always be used in place of `layoutMargins`.

It allows us to specify constraints and custom insets on a `UIView` while taking into account the current language’s direction:
```swift
view.directionalLayoutMargins =
NSDirectionalEdgeInsets(top: 0 , leading: 100 , bottom: 0 , trailing: 0 )

greetingLabel.translatesAutoresizingMaskIntoConstraints = false
greetingLabel.centerYAnchor
.constraint(equalTo: view.centerYAnchor).isActive = true
greetingLabel.leadingAnchor
.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
.isActive = true
greetingLabel.trailingAnchor
.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
.isActive = true
```
Notice the change in type `directionalLayoutMargins` are of the
`NSDirectionalEdgeInsets` type instead and the left and right parameters are now replaced with `leading` and `trailing`.

When we update our implementation to use `directionalLayoutMargins`,we can see that our margins now honor the layout direction of the device’s primary language:

The system keeps the `layoutMargins` property of the `rootUIView` in sync with the `directionalLayoutMargins`. So, the left inset will automatically take the value of the leading or trailing margin depending on the layout direction.
