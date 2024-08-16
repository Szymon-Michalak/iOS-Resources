---
slug: WhatIsTheDifferenceBetweenTheUIApplicationDelegateAndSceneDelegate
title: What is the difference between the UIApplicationDelegate and SceneDelegate?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Prior to iOS 13, the `AppDelegate` was the main entrypoint for your application. This is where you would typically start the configuration of your third-party dependencies and establish the
starting conditions for your application.

However, as of iOS 13, some of the responsibilities of the `AppDelegate` have been transitioned to the `SceneDelegate`. This change is due to the new multi-window support feature introduced with iPadOS.

With multi-window support, we’ll still have one application, but it can have multiple windows (e.g. imagine Google Chrome or Safari). So, we’ll need a separate object whose sole purpose is to manage the window(s) of the application.

The `AppDelegate` will continue to be responsible forthe application lifecycle and initial setup, but the `SceneDelegate` will now be responsible forwhat is shown on the screen.

As part of this transition, the `SceneDelegate` will enable us to create multiple instances of our app’s UI all backed by the same `AppDelegate`. This new multi-window support also means that each of these instances will appear as separate views in iOS’s application switcher.

Moreover, each window is meant to work independently from one another, so now screens can independently move from the foreground to the background or vice-versa.

`AppDelegate’s` responsibilities are otherwise unchanged.It will still be responsible for setting up any data needed for the duration of the application, configuring your app’s scenes, registering for external services like push notifications, and managing the application’s lifecycle.

In a nutshell, the `SceneDelegate` manages the iOS app’sUI lifecycle methods whereas the
`AppDelegate` only handles the iOS app’s applicationlifecycle methods.
