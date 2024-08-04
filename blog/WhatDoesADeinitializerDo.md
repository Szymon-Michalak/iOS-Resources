---
slug: WhatDoesADeinitializerDo
title: What does a deinitializer do?
authors: [szymon]
tags: [swift]
---

A deinitializer is a function that is called right before aclassis deallocated. Deinitializers are only available onclasstypes and eachclasscan onlyhave one deinitializer. This function does not accept any parameters.

You create a deinitializer using the deinit keyword:

```swift
deinit {
// Perform the deinitialization
}
```

Although Swift automatically deallocates instances when they are no longer needed (the retain count becomes 0), deinitializers allow you to perform additional cleanup before your instance is deallocated.

For example, you may want to invalidate timers, terminate a socket connection, or close out a connection to a database:

```swift
deinit {
database.closeConnection()
}

deinit {
timer?.invalidate()
timer = nil
}
```

Just before releasing an instance, the system will call the deinitializer automatically; do not call it yourself.
