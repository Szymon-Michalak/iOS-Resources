---
slug: HowWouldYouDebugViewLayoutIssues
title: How would you debug view layout issues?
authors: [szymon]
tags: [general]
---

As an iOS developer, layout problems are an inevitability. From breaking constraints to weird UI issues occurring only at runtime (text truncation, alpha value issues, broken animations, etc.), debugging layout issues in iOS can be tricky.

Therefore, it’s crucial to know all of the different approaches to debugging layout issues in iOS.

This is particularly useful during an interview when time is of the essence. Moreover, it's a great way to demonstrate your familiarity with advanced Xcode features.

**Debug View Hierarchy**

The Debug View Hierarchy pauses the application in its current state thereby providing the programmer an opportunity to inspect and better understand the UI hierarchy of their app.


This view will not only show you an “exploded” 3D version of your view, but it helps you understand the full hierarchy of the view from the top most view controllers all the way down to individual subviews,UILabels,UIImageViews, etc.Additionally, this tool will also highlight
anyUIView’s with runtime constraint errors.

There’s a lot of functionality here, so I’d recommend spending some time playing around with it if you’re unfamiliar. It can help you catch breaking constraints, clipped views, and a variety of other layout issues.

**Customizing Constraint Identifiers**

Troubleshooting constraint issues is particularly challenging because the error messages are not very user-friendly.

To make things easier, we can leverage theidentifierproperty on a `NSLayoutConstraint`.

This property is available to use regardless of whether the constraint is defined through a `.storyboard`, `.xib`, or programmatically.

```swift
var bannerWidthConstraint: NSLayoutConstraint?
bannerWidthConstraint.identifier = "Promotional bannerwidth"
```

A custom identifier makes it easier for you to distinguish between system-generated and user-generated constraints in Debug Logs.

By leveraging custom identifiers, the Debugger output will now contain clearer error messages which will make it much easier to track down and resolve layout issues.

**Without Identifier:**

Will attempt to recover by breaking constraint

```swift
<NSLayoutConstraint:0x7a87b000 H:[UILabel:0x7a8724b0'Name'(>=400)]>
```

**With Identifier:**

Will attempt to recover by breaking constraint

```swift
<NSLayoutConstraint:0x7b56d020 'Label Width' H:[UILabel:0x7b58b040'Name'(>=400)]>
```

As you can see, these identifiers allow you to quickly and easily identify specific constraints in the log output.


**exerciseAmbiguityInLayout()**

This method randomly changes the frame of a view with an ambiguous layout between its different valid values, causing the view to move in the interface. This makes it easy to visually identify what the different valid frame configurations are and helps the developer understand what constraints need to be added to the layout to correctly and fully specify the layout of the view.

This method should only be used for debugging purposes; no application should ship with calls to this method.

**Developer Tool: https://www.wtfautolayout.com/**

If you’re having difficulty making sense of the Debugger’s “breaking constraint” output, you can use this site to help you easily visualize the problem.
