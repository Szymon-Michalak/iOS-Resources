---
slug: WhatIsAViewsIntrinsicContentSize
title: What is a view’s intrinsic content size?
authors: [ace-the-ios-interview]
tags: [uikit]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

All `UIViews` have an `.intrinsicContentSize` property that specifies the amount of space the `UIView` needs to show its content in an ideal manner.

If you've ever used `UITableView.automaticDimension`,this is deferring to the `UITableViewCell`'s intrinsic content size to figure out the appropriate height for the cell.

As another example, if you had a `UILabel` with a customfont and word wrapping enabled, the intrinsic content size would be the size needed to show all of the text without any truncation.
