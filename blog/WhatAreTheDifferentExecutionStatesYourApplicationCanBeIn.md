---
slug: WhatAreTheDifferentExecutionStatesYourApplicationCanBeIn
title: What are the different execution states your application can be in?
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

There are 5 distinct states an iOS app can find itself in:

**Not running**
This is when the app has not been launched or was previously running but has now been terminated by the system.

**Inactive**

This occurs when the app is actively running in the foreground, but is not receiving events. This state tends to be brief as the app transitions to some other state.

**Active**

This is the normal mode for most apps; the app is running in the foreground and receiving and responding to events.

**Background**

This state describes an app that is running in the background, but is still executing code. Most applications tend to enter this state on the way to being suspended. Furthermore, apps that require extra execution time may remain in this stage longer.

Apps that are launched directly into the background will enter this state instead of the inactive state.

**Suspended**

This state describes an application that is running in the background but is not executing code.

Apps that are suspended will remain in memory, but will be terminated by the system if a low-memory condition occurs.
