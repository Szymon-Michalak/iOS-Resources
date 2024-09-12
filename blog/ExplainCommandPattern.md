---
slug: ExplainCommandPattern
title: Explain the Command Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Command Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Command Pattern** encapsulates requests or actions into objects. This allows you to parameterize methods, queue operations, and support undo functionality.
:::

### Concept Overview

The **Command Pattern** is a behavioral design pattern that turns a request or action into a command object, which can then be executed, delayed, or queued. The three primary components are:

1. **Invoker**: Stores and executes commands.
2. **Command**: Encapsulates the action to be performed.
3. **Receiver**: The object that the command is performed on.

This pattern is often used in situations where actions need to be executed at a later time or reversed (for undo functionality).

### Playground Example

Below is an example based on a **door control system** from the book:

```swift
import Foundation

// MARK: - Receiver
public class Door {
    public var isOpen = false
}

// MARK: - Command
public class DoorCommand {
    public let door: Door
    public init(_ door: Door) {
        self.door = door
    }
    public func execute() {}
}

public class OpenCommand: DoorCommand {
    public override func execute() {
        print("Opening the door...")
        door.isOpen = true
    }
}

public class CloseCommand: DoorCommand {
    public override func execute() {
        print("Closing the door...")
        door.isOpen = false
    }
}

// MARK: - Invoker
public class Doorman {
    public let commands: [DoorCommand]
    public let door: Door
    
    public init(door: Door) {
        let commandCount = arc4random_uniform(10) + 1
        self.commands = (0..<commandCount).map { index in
            return index % 2 == 0 ? OpenCommand(door) : CloseCommand(door)
        }
        self.door = door
    }
    
    public func execute() {
        print("Doorman is executing commands...")
        commands.forEach { $0.execute() }
    }
}

// Example usage
let door = Door()
let doorman = Doorman(door: door)
doorman.execute()
```

### How It Works:
- **Receiver**: The `Door` class acts as the receiver that will be opened or closed by the command.
- **Command**: The `OpenCommand` and `CloseCommand` encapsulate the actions of opening and closing the door.
- **Invoker**: The `Doorman` class stores and executes the commands in sequence.

### When to Use

- **Queuing and executing actions**: When you need to queue operations to be performed later, or support undo functionality.
- **Decoupling requesters from executors**: When the requester (e.g., user interface) should be decoupled from the object that performs the action.

### When to Be Careful

- **Complex command objects**: Be cautious of creating too many command objects, as it can lead to more complex and harder-to-maintain code.

---

:::tip[In Bullets]
- The **Command Pattern** turns actions into objects that can be stored and executed later.
- It involves three main components: **invoker**, **command**, and **receiver**.
- Useful for queuing, undo functionality, or decoupling requesters from actions.
:::
