---
slug: WhatDoesViewDidLayoutSubviewsDo
title: What does viewDidLayoutSubviews() do?
authors: [szymon]
tags: [uikit]
---

Simply put, `viewDidLayoutSubviews()` allows you to make customizations to views after they’ve been positioned by `AutoLayout`, but before they are visible to the user.

Whenever the bounds change for a `UIViewController’s` view (i.e. device rotation), it’s likely that the position and size of all the subviews will need to be updated as well. So, the system will `calllayoutSubviews()` to perform this change.

Then, once your `UIViewController` has finished laying out all of its subviews (all of your subviews are in their correct location and their frames honor whatever `AutoLayout` constraints you’ve specified), the system will call `viewDidLayoutSubviews()`.

From here, if you need to further customize or override any changes prior to the view being visible on screen, `viewDidLayoutSubviews()` gives youan opportunity to do so.

If you’re wondering why we can’t make these changes in `viewDidLoad()` or `viewWillAppear()`, it’s because the frames of the subviews aren’t finalized by the time those functions are called. They’re only considered finalized once `layoutSubviews()` finishes running, so our only option to make customizations is in `viewDidLayoutSubviews()`.

The order of the UIViewController lifecycle is as follows:

1. `loadView()`
2. `viewDidLoad()`
3. `viewWillAppear()`
4. `viewWillLayoutSubviews()`
5. `viewDidLayoutSubviews()`
6. `viewDidAppear()`
7. `viewWillDisappear()`
8. `viewDidDisappear()`
