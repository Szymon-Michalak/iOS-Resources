---
slug: WhatDoesLayoutSubviewsDo
title: What does layoutSubviews() do?
authors: [szymon]
tags: [uikit]
---

The default implementation of this function uses any constraints you have set to determine the size and position of all of the view’s subviews. Overriding this method allows you to perform a more precise layout of a view’s subviews by setting the frame rectangles of your subviews directly.

Typically, you would only override this function if AutoLayout wasn’t offering the behavior you wanted.

According to Apple’s documentation:

You should not call this method directly. If you want to force a layout update, call the `setNeedsLayout()` method instead to do so prior tothe next drawing update. If you want to update the layout of your views immediately, call the `layoutIfNeeded()` method.
