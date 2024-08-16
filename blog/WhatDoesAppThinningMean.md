---
slug: WhatDoesAppThinningMean
title: What does app thinning mean?
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

As the name suggests, app thinning - introduced in iOS 9 - helps developers reduce the size of their app’s executable. This reduction in size is accomplished through three mechanisms; slicing, bitcode, and the use of on-demand resources.

Prior to iOS 9, when you installed your app on a device, it would include assets for all device types. For example, you might be on a non-retina screen device, but the app installation would still include retina quality assets. In other words, your application’s executable would include all of the resources required to run on all device types.

Unsurprisingly, this would inflate the size of the installed app with assets the user would never be able to use. So, slicing allows developers to include only the relevant assets for the device on which the app is being installed. This is one of the many conveniences asset catalogs afford us.

Typically, when you upload your app to App Store Connect, you are sending a compiled binary file. When you enable the bitcode setting in Xcode, you’ll send an intermediate representation of the compiled program instead. The compilation will be completed when it’s installed by the user. This delayed approach to compilation allows Apple to identify the device the app is being installed on and pick only the relevant resources and assets to bundle into the final executable alongside introducing additional device-specific optimizations.

On-demand resources are app contents that are hosted on the App Store and are separate from the related app bundle that you download. They enable smaller app bundles, faster downloads, and richer app content. The app requests sets of on-demand resources, and the operating system manages downloading and storage. The app uses the resources and then releases the request. After downloading, the resources may stay on the device through multiple launch cycles, making access even faster.

Nowadays, these settings are enabled by default.