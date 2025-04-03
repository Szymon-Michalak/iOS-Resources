---
slug: WhatMethodsAreRequiredToDisplayDataInAUITableView
title: What methods are required to display data in a UITableView?
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

Here are the only required `UITableViewDataSource` methods:

```swift
// Return the number of rows for the table.
override func tableView(_ tableView: UITableView,
    numberOfRowsInSection section: Int) -> Int {
    return 0
}

// Provide a cell object for each row.
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Fetch a cell of the appropriate type.
    let cell = tableView.dequeueReusableCell( withIdentifier:"CellIdentifier", for: indexPath)

    // Configure the cell's contents.
    cell.textLabel!.text = "Cell text"
    return cell
}
```