---
slug: HowCanWeHandleChangesInOurApplicationsLifecycleState
title: How can we handle changes in our application’s lifecycle state?
authors: [szymon]
tags: [general]
---

Our application's `AppDelegate` allows us to easily handle our application’s lifecycle changes.

`UIApplication` will trigger one of the following delegate methods whenever our application changes its lifecycle status.

```swift
optional func application(_ application: UIApplication,
willFinishLaunchingWithOptions launchOptions:
[UIApplication.LaunchOptionsKey : Any]? = nil)
-> Bool
```
This method is called at launch time and is our app's first chance to execute code.

```swift
optional func application(_ application: UIApplication,
didFinishLaunchingWithOptions launchOptions:
[UIApplication.LaunchOptionsKey : Any]? = nil)
-> Bool
```
This method is called after the application has finished launching and is now ready to run.
We can use this method to perform any final initialization and setup before our app is
displayed to the user.

```swift
optional func applicationDidBecomeActive(_ application:UIApplication)
```
Informs the application that it is about to become the foreground app. If we have any
last-minute preparation we need to do, we should do that here.

```swift
optional func applicationWillResignActive(_ application:UIApplication)
```
Informs the application that it is transitioning away from being the application in the
foreground.

```swift
optional func applicationDidEnterBackground(_ application: UIApplication)
```

Notifies your app that it is now running in the background and may transition to the suspended
state at any time.

```swift
optional func applicationWillEnterForeground(_ application: UIApplication)
```

Notifies your app that it is transitioning from the background state to the foreground state, but
it is not yet active.

```swift
optional func applicationWillTerminate(_ application:UIApplication)
```

This method notifies your app that it is being terminated and provides you with an opportunity
to do any last-minute cleanup. It’s important to note that this method is only called if your
application is terminated without being transitioned to background mode.

