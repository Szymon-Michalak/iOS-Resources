---
slug: WhatAreTheStagesInAUIViewControllersViewLifecycle
title: What are the stages in a UIViewController’s view lifecycle?
authors: [szymon]
tags: [general]
---

Here are the different stages of a `UIViewController`’s lifecycle:

`loadView()`
This function is responsible for creating the view the `UIViewController` manages. If you want to create your view manually, you’ll need to override this function.

However, if you’re working with `.storyboard` or `.xib` files, you can ignore this method entirely.

`loadViewIfNeeded()`
Loads the `UIViewController`’s view if it has not yet been loaded.

`viewDidLoad()`
This method is called after the `UIViewController` has loaded its view hierarchy into memory.

This method is called regardless of whether the view hierarchy was loaded from a `.xib` file, `.storyboard`, or created programmatically in the `loadView()` method. In most cases, you’ll override this method in order to perform additional setup and customization.

`viewWillAppear(_ animated: Bool)`
This method is called before the `UIViewController`'s view is about to be added to a view hierarchy and before any animations are configured for showing the view. You can override this method to perform custom tasks associated with displaying the view. For example, you might use this method to change the orientation or style of the status bar to coordinate with the orientation or style of the view being presented.

According to Apple’s documentation, this method “notifies the `UIViewController` that its view is about to be added to a view hierarchy”, however this method gets called every time the view is about to appear regardless of whether the view has previously been added to the hierarchy.

`viewWillLayoutSubviews()`
This method is called to notify the `UIViewController` that its view is about to layout its subviews. In other words, this method is called right before `layoutSubviews()` is executed.

For example, when a view's bounds change, this function will be called as the view needs to adjust the position of its subviews and the layout will need to be recalculated. Your view controller can override this method to make changes before the view lays out its subviews. The default implementation of this method does nothing.

`viewDidLayoutSubviews()`
As you’d expect, this method is called to notify the view controller that `layoutSubviews()` has finished execution.

This method being called does not indicate that the individual layouts of the view's subviews have been adjusted as each subview is responsible for adjusting its own layout.

YourUIViewControllercan override this method tomake changes after the view lays out its subviews. The default implementation of this method does nothing.

`viewDidAppear(_ animated: Bool)`
This function notifies the `UIViewController` that its view has been added to the view hierarchy and is now visible on the screen.

You can override this method to perform additional tasks associated with presenting the view.
If you override this method, you must callsuperatsome point in your implementation.

`viewWillDisappear(_ animated: Bool)`
This method is called when the `UIViewController` is going to be removed from the view hierarchy or will no longer be visible. This method is called before the view is actually removed and before any animations are configured.

`viewDidDisappear(_ animated: Bool)`
This method is called when the `UIViewController` is removed from the view hierarchy.
