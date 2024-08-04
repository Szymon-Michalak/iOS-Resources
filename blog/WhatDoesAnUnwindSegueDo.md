---
slug: WhatDoesAnUnwindSegueDo
title: What does an unwind segue do?
authors: [szymon]
tags: [uikit]
---

You can use an unwind segue to jump to any `UIViewController` further up your `UIViewController` hierarchy while simultaneously destroying all other `UIViewControllers` in between. More specifically, you can use it to navigate back through one or more push, modal, or popover segues.

Let’s say you’re navigating from `ViewControllerA` **→** `ViewControllerB` **→** `ViewControllerC` and you want to go from `ViewControllerC` back to `ViewControllerA`.If you had to rely on just the back button alone, you’d have to go through `ViewControllerB` first.

With an unwind segue, we can jump directly to `ViewControllerA` and destroy `ViewControllerB` along the way.

In `ViewControllerA`, add:

```swift
@IBAction func unwindToViewControllerA(segue: UIStoryboardSegue) { }
```

You can leave the method body empty.

Then, in the `UIViewController` you’re departing from `ViewControllerC` you can drag from the body of the `UIViewController` to the Exit Icon and select the function we’ve created.

Now, when we press the “Go Directly to A” button, the application will navigate directly from `ViewControllerC` to `ViewControllerA` skipping over anddestroyingViewControllerB along the way.

