---
title: "Database Persistence with Fluent and Postgres in Vapor"
description: "Learn how to add database persistence to your Vapor-based REST API using Fluent and PostgreSQL."
---

Adding persistence to your Vapor-based REST API is crucial for ensuring that your data is saved even after server restarts. This guide shows how to integrate Fluent and PostgreSQL into your Vapor project to persist tasks in a database.

<details>

**URL:** [https://vapor.codes](https://vapor.codes)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`Fluent`, `Vapor`, `Postgres`, `Swift`, `Database Persistence`

**Platforms Supported:** macOS, Linux

**Swift Version:** 5.x
</details>

## Setting Up Database Persistence

### Step 1: Create a Migration for Tasks
In the `Migrations` folder, create `CreateTasks.swift`:
```swift
import Fluent

struct CreateTask: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("task")
            .id()
            .field("description", .string, .required)
            .field("category", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("task").delete()
    }
}
```

### Step 2: Register the Migration
Add the migration in `configure.swift`:
```swift
import Vapor
import Fluent

public func configure(_ app: Application) throws {
    app.migrations.add(CreateTask())
    try app.autoMigrate().wait()
}
```
This will create the database schema when the server starts.

### Step 3: Update the Task Model
Modify `Task.swift` to conform to `Model` for database persistence:
```swift
import Fluent
import Vapor

final class Task: Model, Content {
    static let schema = "task"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "category")
    var category: String
    
    init() { }

    init(id: UUID? = nil, description: String, category: String) {
        self.id = id
        self.description = description
        self.category = category
    }
}
```

### Step 4: Update the TaskController
Modify `TaskControllerAPI` to save tasks to the database:
```swift
import Vapor
import Fluent

final class TaskControllerAPI {
    func index(req: Request) throws -> EventLoopFuture<[Task]> {
        Task.query(on: req.db).all()
    }

    func create(req: Request) throws -> EventLoopFuture<Task> {
        let task = try req.content.decode(Task.self)
        return task.save(on: req.db).map { task }
    }

    func delete(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        Task.find(req.parameters.get("taskID"), on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { $0.delete(on: req.db) }
            .transform(to: .ok)
    }
}

extension TaskControllerAPI: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let tasks = routes.grouped("tasks")
        tasks.get(use: index)
        tasks.post(use: create)
        tasks.group(":taskID") { task in
            task.delete(use: delete)
        }
    }
}
```

### Step 5: Setup Postgres with Docker
Run PostgreSQL in a Docker container:
```bash
docker run --name postgres -e POSTGRES_DB=vapor_database \
-e POSTGRES_USER=vapor_username \
-e POSTGRES_PASSWORD=vapor_password \
-p 5432:5432 -d postgres
```
This matches the configuration in `configure.swift`.

### Step 6: Test the API
Run the server and use cURL to test:
- **Create a Task:**
   ```bash
   curl -H "Content-Type: application/json" -X POST -d '{"description":"Buy milk","category":"Shopping"}' http://127.0.0.1:8080/tasks
   ```
- **Retrieve Tasks:**
   ```bash
   curl http://127.0.0.1:8080/tasks
   ```

## Conclusion
With these steps, your Vapor-based REST API now persists data in a PostgreSQL database, ensuring that your tasks are saved even after server restarts.

## Related Snippets
- [Building REST APIs with Vapor](#)
- [Advanced Querying with Fluent](#)

<LinkCard title="Learn More about Fluent" href="https://docs.vapor.codes/4.0/fluent/overview/" />
ddddd