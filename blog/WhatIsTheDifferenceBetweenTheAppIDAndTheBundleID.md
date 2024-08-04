---
slug: WhatIsTheDifferenceBetweenTheAppIDAndTheBundleID
title: What is the difference between the App ID and the Bundle ID?
authors: [szymon]
tags: [general]
---

During phone screens, especially for Senior iOS roles, I’ve been tested on my understanding of provisioning profiles, development and distribution certificates, App Store Connect, and everything related to managing an iOS release.

As part of that line of questioning, I’ve often been asked to clarify the difference between the App ID and the Bundle ID.

The Bundle ID is simply an identifier written in reverse DNS format that **uniquely identifies a single app**.

The following example should look pretty familiar to you:
```
com.AryamanSharda.WalkingRoutes
```
The Bundle ID can only contain alphanumeric characters and a period.

Since the Bundle ID is specific to an application, it’s useful in helping the system distinguish between the installation of a new app or an app update. Also, because a single Xcode project can have multiple targets and therefore output multiple apps, the Bundle ID lets you uniquely identify each of your project’s targets.

The App ID is a two-part string used to identify one or more apps from a **_single_** development team. It consists of an Apple issued Team ID and your application’s Bundle ID. Additionally, the App ID is used to specify what App Services (Game Center, iCloud, In-App Purchases, Push Notifications, etc.) are available to your application.

The Team ID is created when you open a new Developer Account with Apple and is unique to your specific development team.

Here’s an App ID that matches a specific application:

Explicit App ID:A123456789.com.AryamanSharda.WalkingRoutes

We can also have the App ID match multiple applications from the same development team:

```
Wildcard App ID:A123456789.com.AryamanSharda.*
```
