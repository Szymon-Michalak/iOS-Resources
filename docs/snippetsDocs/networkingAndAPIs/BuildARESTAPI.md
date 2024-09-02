---
title: "Building a REST API using Vapor and Fluent"
description: "Learn how to build a REST API in Swift using Vapor and Fluent, including setup, routing, and database interactions."
---

Swift on the server enables seamless app development from client-side to server-side. Vapor, a popular framework for building web services in Swift, makes it easy to create REST APIs. This guide walks you through setting up a REST API for managing tasks using Vapor and Fluent.

<details>

**URL:** [https://vapor.codes](https://vapor.codes)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`REST API`, `Vapor`, `Fluent`, `Swift`, `Server-Side Swift`

**Platforms Supported:** macOS, Linux

**Swift Version:** 5.x
</details>

## Getting Started with Vapor

### Step 1: Install Vapor and Setup the Project
1. **Check Swift Version:**
   ```bash
   swift --version
   ```
   Ensure you have Swift 5.2 or later.

2. **Install Vapor CLI using Homebrew:**
   ```bash
   brew install vapor
   ```

3. **Create a New Vapor Project:**
   ```bash
   vapor new TaskAPI
   cd TaskAPI
   vapor xcode
   ```
   Select `yes` to use Fluent and choose Postgres as the database.

### Step 2: Define the Task Model
Create a `Task.swift` file under the `Models` group:
```swift title="Task.swift"
import Vapor

final class Task: Content {
    let id: UUID?
    var description: String
    var category: String

    init(id: UUID? = nil, description: String, category: String) {
        self.id = id
        self.description = description
        self.category = category
    }
}
```

### Step 3: Setup Routes
Define routes in `Routes.swift` to handle task creation and retrieval:
```swift title="Routes.swift"
import Vapor

var tasks = [Task]()

func routes(_ app: Application) throws {
    app.post("task") { req -> EventLoopFuture<HTTPStatus> in
        let task = try req.content.decode(Task.self)
        tasks.append(task)
        return req.eventLoop.makeSucceededFuture(.ok)
    }

    app.get("task") { req -> [Task] in
        return tasks
    }
}
```

### Step 4: Run and Test the API
1. **Run the Vapor Project:**
   ```bash
   vapor build
   vapor run
   ```
   Visit `http://127.0.0.1:8080/hello` to verify the setup.

2. **Test with cURL:**
   - **Create a Task:**
     ```bash
     curl -H "Content-Type: application/json" -X POST -d '{"description":"Buy milk","category":"Shopping"}' http://127.0.0.1:8080/task
     ```
   - **Retrieve Tasks:**
     ```bash
     curl http://127.0.0.1:8080/task
     ```

## Adding Fluent for Database Support

### Step 5: Integrate Fluent with Postgres
Modify `configure.swift` to connect Vapor with a PostgreSQL database using Fluent:
```swift title="configure.swift"
import Fluent
import FluentPostgresDriver
import Vapor

public func configure(_ app: Application) throws {
    app.databases.use(.postgres(
        hostname: "localhost",
        username: "vapor_username",
        password: "vapor_password",
        database: "vapor_database"
    ), as: .psql)

    app.migrations.add(CreateTask())
    try app.autoMigrate().wait()
}
```

### Step 6: Define Database Migration
Create a migration for the `Task` model in `Task.swift`:
```swift title="Task.swift"
import Fluent

struct CreateTask: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("tasks")
            .id()
            .field("description", .string, .required)
            .field("category", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("tasks").delete()
    }
}
```

### Step 7: Update Routes to Use Fluent
Replace the in-memory storage with Fluent’s database operations:
```swift
import Vapor
import Fluent

func routes(_ app: Application) throws {
    app.post("task") { req -> EventLoopFuture<Task> in
        let task = try req.content.decode(Task.self)
        return task.save(on: req.db).map { task }
    }

    app.get("task") { req -> EventLoopFuture<[Task]> in
        Task.query(on: req.db).all()
    }
}
```

## Conclusion
This guide covers setting up a REST API using Vapor and Fluent, managing tasks with routes, and integrating with a PostgreSQL database. With this foundation, you can expand your API to include more complex operations.

## Related Snippets
- [Handling JSON in Swift](#)
- [Error Handling in Vapor](#)

<LinkCard title="Learn More about Vapor" href="https://vapor.codes" />
