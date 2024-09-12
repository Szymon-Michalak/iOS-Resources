---
slug: ExplainMediatorPattern
title: Explain the Mediator Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Mediator Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Mediator Pattern** centralizes communication between objects (colleagues) by using a mediator that manages the interactions. This reduces coupling between objects and simplifies communication in complex systems.
:::

### Concept Overview

The **Mediator Pattern** is a behavioral pattern that facilitates communication between multiple objects (colleagues) by delegating the interactions to a mediator. The key components of this pattern are:

1. **Mediator**: Manages and coordinates communication between colleagues.
2. **Colleague**: The objects that need to communicate, but interact only through the mediator.
3. **Mediator Protocol**: Defines the interface for communication between the mediator and colleagues.

### Playground Example

The following example demonstrates the **Mediator Pattern** using a group of **Musketeers** who communicate via a mediator:

```swift
import Foundation

// MARK: - Colleague Protocol
public protocol Colleague: AnyObject {
    func colleague(_ colleague: Colleague?, didSendMessage message: String)
}

// MARK: - Mediator Protocol
public protocol MediatorProtocol: AnyObject {
    func addColleague(_ colleague: Colleague)
    func sendMessage(_ message: String, by colleague: Colleague)
}

// MARK: - Colleague Class
public class Musketeer {
    public var name: String
    public weak var mediator: MediatorProtocol?
    
    public init(mediator: MediatorProtocol, name: String) {
        self.mediator = mediator
        self.name = name
        mediator.addColleague(self)
    }
    
    public func sendMessage(_ message: String) {
        print("\(name) sent: \(message)")
        mediator?.sendMessage(message, by: self)
    }
}

// MARK: - Mediator Class
public class MusketeerMediator: MediatorProtocol {
    private var colleagues: [Colleague] = []
    
    public func addColleague(_ colleague: Colleague) {
        colleagues.append(colleague)
    }
    
    public func sendMessage(_ message: String, by colleague: Colleague) {
        colleagues.forEach { $0.colleague(colleague, didSendMessage: message) }
    }
}

// Example usage:
let mediator = MusketeerMediator()
let athos = Musketeer(mediator: mediator, name: "Athos")
let porthos = Musketeer(mediator: mediator, name: "Porthos")
let aramis = Musketeer(mediator: mediator, name: "Aramis")

athos.sendMessage("One for all...!")
```

### How It Works:
- **Mediator**: `MusketeerMediator` manages the communication between different `Musketeer` objects.
- **Colleague**: Each `Musketeer` sends messages through the mediator, and the mediator distributes the messages to the other musketeers.

### When to Use

- **Simplifying communication**: When multiple objects need to communicate, but you want to reduce their direct dependencies.
- **Decoupling**: When you need to centralize control of interactions in complex systems.

### When to Be Careful

- **Mediator becoming complex**: Be cautious about the mediator taking on too many responsibilities and becoming a "god object."

---

:::tip[In Bullets]
- The **Mediator Pattern** centralizes communication between objects (colleagues).
- It involves a **mediator** and **colleagues** who communicate only through the mediator.
- Useful for decoupling interactions and managing communication in complex systems.
:::
