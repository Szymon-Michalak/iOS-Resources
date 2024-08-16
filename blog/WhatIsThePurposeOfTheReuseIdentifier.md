---
slug: WhatIsThePurposeOfTheReuseIdentifier
title: What is the purpose of the reuseIdentifier?
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

One of the performance optimizations `UITableViewsandUICollectionViews` make is to only initialize enough cells to fill the user’s screen. Then, whenever the user scrolls, instead of instantiating a new cell, it can just replace the contents of an existing previously allocated cell *the cell that is about to be scrolled off the screen*. This approach is not only very performant, but also utilizes less memory.

Imagine a `UITableView` with multiple custom `UITableViewCells`.In order to perform the optimization mentioned above, the `UITableView` needsto be able to quickly find a cell that differs only in content, but shares the same layout.

This is exactly the problem that reuse identifiers solve.

`UITableViews` use reuse identifiers to understand what `rows` (if any) differ only in content and not in layout. These cells then become candidates for reuse.

That’s why if you have a `UITableView` with multiple `UITableViewCell` types, you’ll need to register multiple cell reuse identifiers.
```swift
tableView.registerClass(MyCustomCell.self, forCellReuseIdentifier: "MyCustomCell")
```
