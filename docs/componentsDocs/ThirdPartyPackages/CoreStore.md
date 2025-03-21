---
title: "CoreStore"
description: "CoreStore simplifies Core Data usage in iOS development by providing a type-safe and modern API for managing your data models."
sidebar_label: "CoreStore"
---

CoreStore is a lightweight, type-safe library for working with Core Data in Swift. It eliminates much of the boilerplate code associated with Core Data and provides a modern API for managing data models, queries, and transactions effectively.

<details>

**URL:** [CoreStore GitHub Repository](https://github.com/JohnEstropia/CoreStore)

**Authors:** `John Estropia`

**License:** `MIT`

**Tags:**  
`[Core Data]`, `[Persistence]`, `[iOS Development]`, `[Swift Framework]`

</details>

### Key Features

- **Type-Safe API**: Provides strongly typed, compile-time checked methods for Core Data operations.
- **Simple Setup**: Minimal configuration required to get started with a fully functional Core Data stack.
- **Advanced Queries**: Supports fetch and query operations with expressive syntax.
- **Asynchronous Transactions**: Manage Core Data changes in background threads safely and efficiently.
- **Built-in Migration**: Handles lightweight migrations seamlessly.

### Installation

#### CocoaPods
```ruby
pod 'CoreStore'
```

#### Swift Package Manager
```swift
dependencies: [
    .package(url: "https://github.com/JohnEstropia/CoreStore.git", from: "8.0.0")
]
```

### Basic Usage

**Setting Up CoreStore**
```swift
CoreStore.defaultStack = DataStack(
    CoreStoreSchema(
        modelVersion: "V1",
        entities: [
            Entity<TestEntity>("TestEntity")
        ]
    )
)
```

**Performing Queries**
```swift
let items: [TestEntity] = CoreStore.fetchAll(
    From<TestEntity>().where(\.attribute == "value")
)
```

**Handling Transactions**
```swift
CoreStore.perform(asynchronous: { transaction in
    let object = transaction.create(Into<TestEntity>())
    object.attribute = "New Value"
}) { result in
    switch result {
    case .success:
        print("Saved successfully!")
    case .failure(let error):
        print("Save failed: \(error)")
    }
}
```

### Related Tools

- **NSFetchedResultsController**: CoreStore integrates smoothly with `NSFetchedResultsController` for managing table or collection views.
- **Core Data Migrations**: Built-in support for lightweight migrations simplifies the management of schema changes.

### Further Reading

- [CoreStore Documentation](https://github.com/JohnEstropia/CoreStore/wiki)
- [Why Use CoreStore?](https://github.com/JohnEstropia/CoreStore#why-use-corestore)

<LinkCard title="View CoreStore on GitHub" href="https://github.com/JohnEstropia/CoreStore" />
