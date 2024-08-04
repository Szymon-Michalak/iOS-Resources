---
slug: WhatDoesSetNeedsDisplayDo
title: What does setNeedsDisplay() do?
authors: [szymon]
tags: [uikit]
---

Just like `setNeedsLayout()` tells the system the layout needs to be updated, `setNeedsDisplay()` informs the system that the view’scontent needs to be redrawn. This function queues the redrawing task and returns immediately. The view is only redrawn at the next drawing cycle at which point any and all views are updated.

Typically, you will only need to call `setNeedsDisplay()` if you are also overriding `drawRect()` in your implementation. As would be the case if you were working on a `customUIControlor` if your view contained some custom shapes or effects.

`drawRect()` is responsible for the actual rendering of the view and is called by the system whenever drawing is required. You should never call this function explicitly; letting the system manage the calls to this function helps avoid multiple redraws if one has already been queued.

Let’s say we have a `DrawLineView` which draws a linebetween 2 provided points. It might look something like this:

```swift
class DrawLineView: UIView {
    var point1, point2: CGPoint!
    // Only override drawRect() if you perform custom drawing.
    // An empty implementation adversely affects performance
    // during animation.
    override func drawRect(rect: CGRect) {
        // Draws a line from point1 to point2
        let context = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(context, point1.x, point1.y)
        CGContextAddLineToPoint(context, point2.x,point2.y)
        CGContextStrokePath(context)
    }
}
```
If we wanted to update the location and the length of the line, simply updating the values of `point1` and `point2` will not suffice. Changing these properties will **not** automatically redraw the line with updated starting and ending points. So far all we’ve done is change the underlying data, but we still haven’t forced an update of the UI [forced a call todrawRect()].

As a result, we’ll need to call `setNeedsDisplay()` after updating `point1` and `point2`:

```swift
drawLineView.point1 = CGPointMake(startDot.center.x, startDot.center.y);
drawLineView.point2 = CGPointMake(endDot.center.x, endDot.center.y);

drawLineView.setNeedsDisplay()
```

This call tosetNeedsDisplay()will in turn calldrawRect()which will actually redraw the line to reflect its new starting and ending locations.

Here’s an example courtesy offujianjin6471 on GitHub. It may help to check out this project and play around with it to better understand `setNeedsDisplay()`’s role.
