---
slug: WhatIsYourPreferredWayOfCreatingViews
title: What is your preferred way of creating views?
authors: [szymon]
tags: [general]
---

There’s no right or wrong answer here as the question is inherently subjective, but it’s a great opportunity for you to demonstrate that you understand the challenges and limitations with each approach (`.xib` vs `.storyboard` vs programmatically).

**Storyboards**
Storyboards are a great way to quickly build out new designs and are useful in encapsulating a particular user flow. By keeping all of the views relevant to an experience in your app in the same storyboard, it makes it easier to get a high-level overview of the applications’ functionality and intended user experience. Storyboards can also make navigating to and from other `UIViewControllers` very easy via segues.

However, storyboards can be difficult to work with on a team as they’re prone to merge conflicts, long loading times, and responsiveness often suffers as the storyboard increases in size.

**XIBs**
While xibs and storyboards share a lot of similarities, they trade the storyboard’s navigation behavior for increased reusability. Since a xib is specific to one view, there’s no provision of establishing segues from one view to the next. You’ll typically use a xib when you have a single custom component that you want to re-use in multiple locations throughout the app.

Both storyboards and xibs make design changes very cumbersome to implement. For example, if you wanted to change the application’s default font, colors, icons, or some other application-wide change needs to be made, you’d have to go into each storyboard and xib and manually update each view.

There are ways to mitigate this, but the “source of truth” gets a bit lost. Since you’ll often apply additional styling programmatically (like shadows and rounded corners), a developer now needs to check multiple locations to get a full picture of the view’s complete implementation and expected appearance. Last but not least, searching for constraints, custom styling, subviews, images, fonts, etc. is much more difficult on storyboards and xibs than on a view defined programmatically.

**Programmatically**

While this option can be tedious and is often initially slower than the other options, it allows for greater control, improved searchability, and more reuse.

Any application-wide UI change can be made easily, merge conflicts are easier to manage, there’s a single source of truth, and views created programmatically can be more easily tested.

In practice, you’ll likely find that there’s rarely ever one right approach. Often, production projects will have a mix of all three methods depending on how much reuse and development speed influences the decision making.
