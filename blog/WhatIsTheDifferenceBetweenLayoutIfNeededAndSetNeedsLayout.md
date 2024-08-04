---
slug: WhatIsTheDifferenceBetweenLayoutIfNeededAndSetNeedsLayout
title: What is the difference between layoutIfNeeded() and setNeedsLayout()?
authors: [szymon]
tags: [uikit]
---


Building off the previous answer, let’s take a closer look at the differences between `layoutIfNeeded()` and `setNeedsLayout()`.

**setNeedsLayout()**
Calling this function tells the system that you want to invalidate the current layout of the view and trigger a layout update in the next update cycle. This function should only be called on the Main Thread.

This function will return immediately as it simply queues this task onto the Main Thread and then returns. Since the actual work is only done on the next update cycle, you can use this function to invalidate the layout of multiple views at once. Consolidating all of your layout updates to one update cycle is far better for performance.

In simple terms, this function will set a flag in the `UIView` that will indicate to the system that the view’s layout needs to be updated. This, in turn, will schedule a call to `layoutIfNeeded()` which will check the status of this flag before proceeding.

Then, assuming the view’s layout does in fact need to be updated, `layoutIfNeeded()` will call `layoutSubviews()` to update the view prior to the next update cycle.

**layoutIfNeeded()**
Unlike `setNeedsLayout()`, `layoutIfNeeded()` tells the system that we want to apply the view’s pending layout changes immediately and we **_donot_** want to wait for the next update cycle.

So, whenever you need to apply layout changes immediately,  `uselayoutIfNeeded()` not `setNeedsLayout()`.

When using Auto Layout, the layout engine updates the position of views as needed to satisfy changes in constraints. Using the view that receives the `layoutIfNeeded()` message as the root view, this method lays out the view subtree starting at the root. If no layout updates are pending, this method exits without modifying the layout or calling any layout-related callbacks.
