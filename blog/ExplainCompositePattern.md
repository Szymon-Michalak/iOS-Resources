---
slug: ExplainCompositePattern
title: Explain the Composite Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Composite Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Composite Pattern** organizes objects into tree-like structures to treat individual objects and collections of objects uniformly. It is useful for representing hierarchical data.
:::

### Concept Overview

The **Composite Pattern** is a structural design pattern that allows you to treat a group of objects as a single object. The key components are:

1. **Component Protocol**: The base protocol that defines the common interface for all objects in the structure.
2. **Leaf**: Represents individual objects that do not contain other objects.
3. **Composite**: A container that holds multiple components, including leaves and other composites.

This pattern is commonly used for building tree-like structures, such as a file system or a UI hierarchy.

### Playground Example

The following example from the book demonstrates how the **Composite Pattern** is used in a file system:

```swift
import Foundation

// Component Protocol
protocol File {
    var name: String { get set }
    func open()
}

// Leaf Classes
final class eBook: File {
    var name: String
    var author: String
    
    init(name: String, author: String) {
        self.name = name
        self.author = author
    }
    
    func open() {
        print("Opening \(name) by \(author) in iBooks...\n")
    }
}

final class Music: File {
    var name: String
    var artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
    
    func open() {
        print("Playing \(name) by \(artist) in iTunes...\n")
    }
}

// Composite Class
final class Folder: File {
    var name: String
    lazy var files: [File] = []
    
    init(name: String) {
        self.name = name
    }
    
    func addFile(file: File) {
        self.files.append(file)
    }
    
    func open() {
        print("Displaying the following files in \(name)...")
        for file in files {
            print(file.name)
        }
        print("\n")
    }
}

// Example usage:
let psychoKiller = Music(name: "Psycho Killer", artist: "Talking Heads")
let justKids = eBook(name: "Just Kids", author: "Patti Smith")

let documents = Folder(name: "Documents")
let musicFolder = Folder(name: "70s Music")
musicFolder.addFile(file: psychoKiller)
documents.addFile(file: musicFolder)
documents.addFile(file: justKids)

documents.open()
```

### How It Works:
- **Component Protocol**: `File` is the base protocol that both `eBook` and `Music` implement.
- **Leaf**: `eBook` and `Music` represent individual files that implement the `File` protocol.
- **Composite**: `Folder` is the composite class that holds other `File` objects (both leaf and composite types).

### When to Use

- **Tree structures**: Use the Composite Pattern when you need to represent objects in a hierarchical tree structure (e.g., a file system or UI elements).
- **Uniform object treatment**: When you need to treat both individual objects and groups of objects uniformly.

### When to Be Careful

- **Overcomplicating simple structures**: Be mindful of introducing unnecessary complexity if a simpler solution can handle the structure.

---

:::tip[In Bullets]
- The **Composite Pattern** groups objects into tree structures, allowing uniform treatment of individual and composite objects.
- It consists of a **component protocol**, **leaf objects**, and **composite objects**.
- This pattern is especially useful for **hierarchical data structures** like file systems or UI hierarchies.
:::
