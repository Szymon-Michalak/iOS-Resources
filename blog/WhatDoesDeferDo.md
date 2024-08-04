---
slug: WhatDoesDeferDo
title: What does defer do?
authors: [szymon]
tags: [swift]
---


The `defer` keyword allows us to specify code that shouldbe executed only when we are leaving the current function’s scope.

It's commonly used for releasing a shared resource, closing a connection, or performing any last-minute cleanup.

In this case, we're using it to close the connection to a database:

```swift
class DatabaseManager {
    func writeLineToDatabase(entry: String) {
        let database = Database()
        defer {
            database.disconnect()
        }
        database.connect()
        do {
            try database.write(entry: "Hello world!")
        } catch {
            print("An error occurred!")
        }
    }
}
```

You’ll see that regardless of whether the:
```swift
try database.write(entry: "Hello world!")
```
call succeeds or fails, we will always close out the database connection without having to duplicate the `disconnect()` call. Lastly, we can usedeferto write setup and cleanup code next to each other, even though they need to be executed at different times.
