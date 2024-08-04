---
slug: WhatMethodsAreRequiredToDisplayDataInAUITableView
title: What methods are required to display data in a UITableView?
authors: [szymon]
tags: [general]
---

Every iOS interview I've done has dealt with `UITableViews` in some capacity. Most often, it will involve hitting some API and showing the response in a `UITableView` like we did in Assessment #1.

As you prepare for your interviews, you should aim to be able to create a `UITableView` with custom `UITableViewCell` swithout referring to any documentation.Ideally, this set up process should become second nature to you.

Since this topic will be a constant in all of your interviews, knowing precisely what functions are necessary and what their respective inputs, outputs, and method signatures are is crucial.

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