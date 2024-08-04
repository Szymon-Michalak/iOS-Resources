---
slug: HowWouldYouAnimateAViewThatHasAConstraint
title: How would you animate a view that has a constraint?
authors: [szymon]
tags: [uikit]
---

With AutoLayout, you can simply change a view’s constraints and let the system figure out how to resize that view and all of its neighbors.

In interviews, I often see candidates mix AutoLayout constraint changes with manual changes to a view’s frame. This combination of two different layout paradigms really complicates the logic and is often error-prone. I’d recommend you stick with AutoLayout whenever possible.

Now, assuming you have a reference to the constraint you want to manipulate, you can simply animate a change by updating the constraint’s value like so:
```swift
imageViewHeightConstraint.constant = 80

UIView.animate(withDuration: 0.5) {
self.view.layoutIfNeeded()
}
```

Make sure you update the constraint outside of the animation block!

Remember to call `layoutIfNeeded()` on `self.view` and not on the view you are attempting to animate. Otherwise, the changes in layout will be applied without animation.

Additionally, Apple recommends calling `layoutIfNeeded()` once before the animation block to ensure all pending layout operations are completed.

It’s very important that we call `layoutIfNeeded()` on `self.view` and not just on the view we are trying to animate. By calling this function on `self.view`,the animation and layout changes will “trickle down” through all of the other subviews.

Remember, you want to animate changes to the neighboring view’s layouts as well - not just changes to any one particular subview.
