---
slug: ExplainFacadePattern
title: Explain the Facade Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Facade Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Facade Pattern** provides a simplified interface to a complex system by hiding the complexity of subsystems, allowing consumers to interact with the system through a unified interface.
:::

### Concept Overview

The **Facade Pattern** is a structural design pattern that simplifies interaction with complex systems by providing a single interface. It consists of:

1. **Facade**: A simplified interface that interacts with multiple subsystem classes.
2. **Subsystem Classes**: The actual implementation classes that perform specific tasks.

This pattern is especially useful when a system contains several interconnected components, and you want to expose a single entry point for users to perform tasks.

### Playground Example

The following example shows how the **Facade Pattern** works in an **ordering system**:

```swift
import Foundation

// MARK: - Dependencies
public struct Customer {
    public let identifier: String
    public var address: String
    public var name: String
}

public struct Product {
    public let identifier: String
    public var name: String
    public var cost: Double
}

// Inventory Database
public class InventoryDatabase {
    public var inventory: [Product: Int] = [:]
    
    public init(inventory: [Product: Int]) {
        self.inventory = inventory
    }
}

// Shipping Database
public class ShippingDatabase {
    public var pendingShipments: [Customer: [Product]] = [:]
}

// MARK: - Facade
public class OrderFacade {
    public let inventoryDatabase: InventoryDatabase
    public let shippingDatabase: ShippingDatabase
    
    public init(inventoryDatabase: InventoryDatabase, shippingDatabase: ShippingDatabase) {
        self.inventoryDatabase = inventoryDatabase
        self.shippingDatabase = shippingDatabase
    }

    public func placeOrder(for product: Product, by customer: Customer) {
        print("Place order for '\(product.name)' by '\(customer.name)'")
        
        let count = inventoryDatabase.inventory[product, default: 0]
        guard count > 0 else {
            print("'\(product.name)' is out of stock!")
            return
        }

        inventoryDatabase.inventory[product] = count - 1

        var shipments = shippingDatabase.pendingShipments[customer, default: []]
        shipments.append(product)
        shippingDatabase.pendingShipments[customer] = shipments
        
        print("Order placed for '\(product.name)' by '\(customer.name)'")
    }
}

// Example usage
let product = Product(identifier: "product-001", name: "Ray's Doodle", cost: 19.99)
let customer = Customer(identifier: "customer-001", address: "123 Apple St.", name: "Johnny Appleseed")
let inventoryDatabase = InventoryDatabase(inventory: [product: 50])
let shippingDatabase = ShippingDatabase()

let orderFacade = OrderFacade(inventoryDatabase: inventoryDatabase, shippingDatabase: shippingDatabase)
orderFacade.placeOrder(for: product, by: customer)
```

### How It Works:
- **Facade**: `OrderFacade` simplifies the interaction by exposing a method `placeOrder`, which internally interacts with `InventoryDatabase` and `ShippingDatabase`.
- **Subsystem Classes**: These handle specific responsibilities such as managing inventory and handling pending shipments.

### When to Use

- **Simplify Complex Systems**: When you want to make complex systems easier to use.
- **Decouple Subsystems**: When you need to hide the complexities of the subsystems from the client.

### When to Be Careful

- **God Facade**: Avoid making the facade too complex. It should simplify the system without adding additional complexity or responsibility.

---

:::tip[In Bullets]
- The **Facade Pattern** provides a simplified interface to a complex system.
- It consists of a **facade** and **subsystem classes**.
- Useful for simplifying interactions with complex components.
:::
