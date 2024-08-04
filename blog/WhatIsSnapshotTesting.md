---
slug: WhatIsSnapshotTesting
title: What is Snapshot Testing?
authors: [szymon]
tags: [testing]
---


Snapshot Testing involves comparing the UI of an application against a set of reference images to ensure correctness.

If the difference between the actual UI and the reference image exceeds some custom threshold, the test fails. This is a really convenient way to ensure that there are no unexpected changes or regressions made to the UI of your application.

While UI tests allow us to test the functionality of our application, snapshot tests focus more on verifying that the implementation matches the agreed upon designs. Snapshot Testing is often easier to implement and update than writing traditional UI tests. Plus, it lets you easily verify the application’s appearance across a variety of device sizes. Lastly, if you change the UI of your application, you’ll be forced to update its corresponding snapshot test which helps ensure your testing suite remains up to date.

Currently, Snapshot Testing is not natively supported through Xcode. However, there are several open-source iOS libraries that enable you to add Snapshot Testing support to your app.
