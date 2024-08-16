---
slug: WhatCommonProblemDoesTheMainThreadCheckerHelpDetect
title: What common problem does the Main Thread Checker help detect?
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

Quite simply, it’s a means of identifying code that should be running on the main thread but is running on a background thread instead.

Since all UI updates should only be performed on the main thread, the Main Thread Checker is often used to help catch instances of UI updates occurring on a background thread.

To enable it, select Edit Scheme → Test → Diagnostics and toggle on the Main Thread Checker:

With this setting enabled, we’ll get the following warning if we try and update the UI on a background thread:
